import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ibtikar_task/src/di_module/module.dart';
import 'package:ibtikar_task/src/features/people/domain/models/models.dart';
import 'package:ibtikar_task/src/features/people/presentation/view/person_details_screen.dart';
import 'package:ibtikar_task/src/ui_components/image_network.dart';
import 'package:infinte_scrolling/infinte_scrolling.dart';

final _singlePersonProvider = Provider<PersonModel>((ref) {
  throw UnimplementedError();
});

class PeopleListScreen extends ConsumerWidget {
  const PeopleListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(peopleListProvider);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: const Text(
          "Popular People",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: PaginationListView<int, PersonModel>(
        controller: controller,
        itemExtent: 120,
        firstPageProgressIndicator: (context) => const Center(
          child: CircularProgressIndicator(
            strokeWidth: 1.2,
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: 16,
        ),
        padding: const EdgeInsets.all(16),
        itemWidgetBuilder: (context, item, index) =>
            ProviderScope(overrides: [_singlePersonProvider.overrideWithValue(item)], child: const _PersonView()),
      ),
    );
  }
}

class _PersonView extends ConsumerWidget {
  const _PersonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final person = ref.watch(_singlePersonProvider);

    return RawMaterialButton(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      onPressed: () => Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (context) => PersonDetailsScreen(person: person),
        ),
      ),
      fillColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ImageNetwork(
              person.profileImage.smallSize,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
              borderRadius: BorderRadius.circular(30),
            ),
            const SizedBox(
              width: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  person.name,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  person.department,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
