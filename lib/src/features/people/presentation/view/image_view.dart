import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ibtikar_task/src/features/people/domain/models/models.dart';
import 'package:ibtikar_task/src/ui_components/image_view.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:path_provider/path_provider.dart';

class ImageViewScreen extends StatelessWidget {
  final ImageModel imageModel;

  const ImageViewScreen({
    Key? key,
    required this.imageModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _saveImageLocally() async {
      final rootPath = await getExternalStorageDirectory();
      if (rootPath == null) return;
      try {
        final imageId = await ImageDownloader.downloadImage(
          imageModel.originalSize,
        );
        if (imageId == null) {
          return;
        }
      } on PlatformException catch (error) {}
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          TextButton.icon(
            icon: const Icon(
              Icons.save_alt_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              _saveImageLocally();
            },
            label: const Text(
              "Save",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: ImageView(
        imageModel: imageModel,
      ),
    );
  }
}
