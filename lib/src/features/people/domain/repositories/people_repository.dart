import 'package:ibtikar_task/src/core/models/result.dart';
import 'package:ibtikar_task/src/features/people/domain/models/models.dart';
import 'package:network/network.dart';

abstract class PeopleRepository {
  Future<Result<List<PersonModel>, NetworkErrorType>> fetchPopularPeople({
    required int perPage,
    required int pageIndex,
  });

  Future<Result<List<ImageModel>, NetworkErrorType>> fetchPersonImages(
    int personId, {
    required int perPage,
    required int pageIndex,
  });
}
