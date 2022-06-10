import 'package:ibtikar_task/src/core/models/result.dart';
import 'package:ibtikar_task/src/features/people/data/entities/people_entities.dart';
import 'package:ibtikar_task/src/features/people/data/mapper/people_mapper.dart';
import 'package:ibtikar_task/src/features/people/domain/models/models.dart';
import 'package:ibtikar_task/src/features/people/domain/repositories/people_repository.dart';
import 'package:network/network.dart';

class PeopleRepositoryImpl implements PeopleRepository {
  final NetworkService _network;
  final PeopleMapper _mapper;

  const PeopleRepositoryImpl(this._mapper, this._network);

  @override
  Future<Result<List<PersonModel>, NetworkErrorType>> fetchPopularPeople({
    required int perPage,
    required int pageIndex,
  }) async {
    final NetworkResponse<PeopleListEntity> response = await _network.request(
      request: NetworkRequest.get(
        endpoint: 'person/popular',
      )
        ..addQueryParameter('per_page', '$perPage')
        ..addQueryParameter('page', '$pageIndex'),
      fromJson: PeopleListEntity.fromJson,
    );

    return response.when(
      success: (data) {
        final peopleList = _mapper.transformToPeopleListList(data);
        if (peopleList != null) {
          return Result.success(peopleList);
        } else {
          return const Result.failure(NetworkErrorType.parsing);
        }
      },
      failure: (error) => Result.failure(error),
    );
  }

  @override
  Future<Result<List<ImageModel>, NetworkErrorType>> fetchPersonImages(
    int personId, {
    required int perPage,
    required int pageIndex,
  }) async {
    final NetworkResponse<ImagesEntity> response = await _network.request(
      request: NetworkRequest.get(
        endpoint: '/person/$personId/images',
      )
        ..addQueryParameter('per_page', '$perPage')
        ..addQueryParameter('page', '$pageIndex'),
      fromJson: ImagesEntity.fromJson,
    );

    return response.when(
      success: (data) {
        final images = _mapper.transformToImages(data);
        if (images != null) {
          return Result.success(images);
        } else {
          return const Result.failure(NetworkErrorType.parsing);
        }
      },
      failure: (error) => Result.failure(error),
    );
  }
}
