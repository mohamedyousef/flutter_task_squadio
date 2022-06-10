import 'package:ibtikar_task/src/core/models/result.dart';
import 'package:ibtikar_task/src/features/people/domain/models/models.dart';
import 'package:ibtikar_task/src/features/people/domain/repositories/people_repository.dart';
import 'package:network/network.dart';

class PeopleUseCases {
  final PeopleRepository _peopleRepository;

  const PeopleUseCases(this._peopleRepository);

  Future<Result<List<PersonModel>, NetworkErrorType>> fetchPopularPeople({
    int perPage = 30,
    int pageIndex = 1,
  }) =>
      _peopleRepository.fetchPopularPeople(perPage: perPage, pageIndex: pageIndex);

  Future<Result<List<ImageModel>, NetworkErrorType>> fetchPersonImages(
    int personId, {
    int perPage = 25,
    int pageIndex = 1,
  }) =>
      _peopleRepository.fetchPersonImages(personId, perPage: perPage, pageIndex: pageIndex);
}
