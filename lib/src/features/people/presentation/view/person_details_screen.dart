import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ibtikar_task/src/di_module/module.dart';
import 'package:ibtikar_task/src/features/people/domain/models/models.dart';
import 'package:ibtikar_task/src/features/people/presentation/view/image_view.dart';
import 'package:ibtikar_task/src/ui_components/image_network.dart';
import 'package:infinte_scrolling/infinte_scrolling.dart';

class PersonDetailsScreen extends ConsumerWidget {
  final PersonModel person;

  const PersonDetailsScreen({
    Key? key,
    required this.person,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileImagesProvider = ref.watch(profileImagesViewModel(person.id));

    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: const BackButton(
          color: Colors.black,
        ),
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: _PersonBasicInfo(
                personModel: person,
              ),
            ),
            const SliverPadding(
              padding: EdgeInsets.fromLTRB(4, 30, 8, 16),
              sliver: SliverToBoxAdapter(
                child: Text(
                  "Photos",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            PaginationSliverGridView<int, ImageModel>(
              crossAxisCount: 3,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              aspectRatio: 1 / 1.5,
              controller: profileImagesProvider,
              firstPageProgressIndicator: (context) => const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 1.2,
                ),
              ),
              itemWidgetBuilder: (context, item, index) => GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageViewScreen(
                      imageModel: item,
                    ),
                  ),
                ),
                child: ImageNetwork(
                  item.smallSize,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _PersonBasicInfo extends StatelessWidget {
  final PersonModel personModel;

  const _PersonBasicInfo({Key? key, required this.personModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageNetwork(
          personModel.profileImage.smallSize,
          width: 80,
          height: 80,
          fit: BoxFit.cover,
          borderRadius: BorderRadius.circular(40),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                personModel.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                personModel.department,
                style: const TextStyle(fontSize: 12, color: Colors.black87),
              ),
            ],
          ),
        )
      ],
    );
  }
}
