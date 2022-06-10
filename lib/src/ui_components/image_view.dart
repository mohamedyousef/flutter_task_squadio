import 'package:flutter/material.dart';
import 'package:ibtikar_task/src/features/people/domain/models/models.dart';
import 'package:photo_view/photo_view.dart';

class ImageView extends StatelessWidget {
  final ImageModel imageModel;

  const ImageView({
    Key? key,
    required this.imageModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhotoView(
      imageProvider: NetworkImage(imageModel.originalSize),
    );
  }
}
