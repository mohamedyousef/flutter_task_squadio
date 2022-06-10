import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

@freezed
class PersonModel with _$PersonModel {
  const factory PersonModel({
    required String name,
    required int id,
    required ImageModel profileImage,
    required String department,
  }) = _PersonModel;
}

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    required String path,
  }) = _ImageModel;

  const ImageModel._();

  String get originalSize => 'https://image.tmdb.org/t/p/original/$path';

  String get smallSize => 'https://image.tmdb.org/t/p/w500/$path';
}
