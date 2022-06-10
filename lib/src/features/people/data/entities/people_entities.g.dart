// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PeopleListEntity _$PeopleListEntityFromJson(Map<String, dynamic> json) => PeopleListEntity(
      (json['results'] as List<dynamic>).map((e) => PersonEntity.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$PeopleListEntityToJson(PeopleListEntity instance) => <String, dynamic>{
      'results': instance.people,
    };

PersonEntity _$PersonEntityFromJson(Map<String, dynamic> json) => PersonEntity(
      name: json['name'] as String?,
      department: json['known_for_department'] as String?,
      id: json['id'] as int?,
      image: json['profile_path'] as String?,
    );

Map<String, dynamic> _$PersonEntityToJson(PersonEntity instance) => <String, dynamic>{
      'name': instance.name,
      'known_for_department': instance.department,
      'id': instance.id,
      'profile_path': instance.image,
    };

ImagesEntity _$ImagesEntityFromJson(Map<String, dynamic> json) => ImagesEntity(
      (json['profiles'] as List<dynamic>).map((e) => ImageEntity.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$ImagesEntityToJson(ImagesEntity instance) => <String, dynamic>{
      'profiles': instance.images,
    };

ImageEntity _$ImageEntityFromJson(Map<String, dynamic> json) => ImageEntity(
      json['file_path'] as String?,
    );

Map<String, dynamic> _$ImageEntityToJson(ImageEntity instance) => <String, dynamic>{
      'file_path': instance.path,
    };
