import 'package:json_annotation/json_annotation.dart';

part 'people_entities.g.dart';

@JsonSerializable()
class PeopleListEntity {
  @JsonKey(name: 'results')
  final List<PersonEntity> people;

  const PeopleListEntity(this.people);

  factory PeopleListEntity.fromJson(Map<String, dynamic> json) {
    return _$PeopleListEntityFromJson(json);
  }
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class PersonEntity {
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'known_for_department')
  final String? department;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'profile_path')
  final String? image;

  const PersonEntity({
    this.name,
    this.department,
    this.id,
    this.image,
  });

  factory PersonEntity.fromJson(Map<String, dynamic> json) {
    return _$PersonEntityFromJson(json);
  }
}

@JsonSerializable()
class ImagesEntity {
  @JsonKey(name: 'profiles')
  final List<ImageEntity> images;

  const ImagesEntity(this.images);

  factory ImagesEntity.fromJson(Map<String, dynamic> json) {
    return _$ImagesEntityFromJson(json);
  }
}

@JsonSerializable()
class ImageEntity {
  @JsonKey(name: 'file_path')
  final String? path;

  const ImageEntity(this.path);

  factory ImageEntity.fromJson(Map<String, dynamic> json) {
    return _$ImageEntityFromJson(json);
  }
}
