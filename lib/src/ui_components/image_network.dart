import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageNetwork extends StatelessWidget {
  const ImageNetwork(
    this.imageUrl, {
    Key? key,
    this.width,
    this.height,
    this.fit,
    this.border,
    this.borderRadius,
    this.placeHolder,
    this.cacheKey,
  }) : super(key: key);

  final String? imageUrl;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final BoxBorder? border;
  final BorderRadius? borderRadius;
  final Widget? placeHolder;
  final String? cacheKey;

  @override
  Widget build(BuildContext context) {
    final _placeholder = placeHolder ??
        Container(
          color: Colors.grey.shade100,
          width: width,
          height: height,
        );

    final imageUrl = this.imageUrl;
    Widget image;

    if (imageUrl != null) {
      image = CachedNetworkImage(
        imageUrl: imageUrl,
        width: width,
        height: height,
        fit: fit,
        cacheKey: cacheKey,
        fadeOutDuration: const Duration(milliseconds: 400),
        fadeInDuration: const Duration(milliseconds: 300),
        placeholder: (context, url) => _placeholder,
        errorWidget: (context, url, error) => _placeholder,
      );
    } else {
      image = _placeholder;
    }

    if (borderRadius == null && border == null) {
      return image;
    } else if (border == null) {
      return ClipRRect(
        borderRadius: borderRadius,
        child: image,
      );
    } else {
      return SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: borderRadius,
                child: image,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  border: border,
                  borderRadius: borderRadius,
                ),
              ),
            )
          ],
        ),
      );
    }
  }
}
