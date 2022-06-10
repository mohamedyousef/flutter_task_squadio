import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ibtikar_task/src/core/network/network.dart';
import 'package:ibtikar_task/src/features/people/data/mapper/people_mapper.dart';
import 'package:ibtikar_task/src/features/people/data/repositories/people_repository_impl.dart';
import 'package:ibtikar_task/src/features/people/domain/usecases/people_use_cases.dart';
import 'package:ibtikar_task/src/features/people/presentation/viewmodels/images_view_model.dart';
import 'package:ibtikar_task/src/features/people/presentation/viewmodels/people_list_view_model.dart';

final _peopleRepository =
    Provider((ref) => PeopleRepositoryImpl(const PeopleMapper(), ref.watch(networkServiceProvider)));

final peopleUseCases = Provider<PeopleUseCases>((ref) {
  return PeopleUseCases(ref.watch(_peopleRepository));
});

final peopleListProvider = Provider<PeopleListViewModel>((ref) {
  return PeopleListViewModel(ref.watch(peopleUseCases));
});

final profileImagesViewModel = Provider.autoDispose.family<ImagesViewModel, int>((
  ref,
  personId,
) {
  return ImagesViewModel(personId, ref.watch(peopleUseCases));
});
