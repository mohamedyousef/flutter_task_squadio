import 'package:ibtikar_task/src/features/people/domain/models/models.dart';
import 'package:ibtikar_task/src/features/people/domain/usecases/people_use_cases.dart';
import 'package:infinte_scrolling/infinte_scrolling.dart';

class PeopleListViewModel extends PaginationController<int, PersonModel> {
  final PeopleUseCases _peopleUseCases;

  PeopleListViewModel(this._peopleUseCases);

  int get perPage => 20;

  @override
  Future<void> fetchPage(int? pageKey) async {
    try {
      final response = await _peopleUseCases.fetchPopularPeople(
        perPage: perPage,
        pageIndex: pageKey ?? 1,
      );

      response.when(
        success: (data) {
          final bool isLastPage = data.length < perPage;
          final nextPageKey = pageKey ?? 1;
          if (isLastPage) {
            appendLastPage(data);
          } else {
            appendPage(data, nextPageKey + 1);
          }
        },
        failure: (failure) => showError(failure),
      );
    } catch (e) {
      showError(e);
    }
  }
}
