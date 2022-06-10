// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonModel {
  String get name => throw _privateConstructorUsedError;

  int get id => throw _privateConstructorUsedError;

  ImageModel get profileImage => throw _privateConstructorUsedError;

  String get department => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonModelCopyWith<PersonModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonModelCopyWith<$Res> {
  factory $PersonModelCopyWith(PersonModel value, $Res Function(PersonModel) then) = _$PersonModelCopyWithImpl<$Res>;

  $Res call({String name, int id, ImageModel profileImage, String department});

  $ImageModelCopyWith<$Res> get profileImage;
}

/// @nodoc
class _$PersonModelCopyWithImpl<$Res> implements $PersonModelCopyWith<$Res> {
  _$PersonModelCopyWithImpl(this._value, this._then);

  final PersonModel _value;

  // ignore: unused_field
  final $Res Function(PersonModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? profileImage = freezed,
    Object? department = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as ImageModel,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ImageModelCopyWith<$Res> get profileImage {
    return $ImageModelCopyWith<$Res>(_value.profileImage, (value) {
      return _then(_value.copyWith(profileImage: value));
    });
  }
}

/// @nodoc
abstract class _$$_PersonModelCopyWith<$Res> implements $PersonModelCopyWith<$Res> {
  factory _$$_PersonModelCopyWith(_$_PersonModel value, $Res Function(_$_PersonModel) then) =
      __$$_PersonModelCopyWithImpl<$Res>;

  @override
  $Res call({String name, int id, ImageModel profileImage, String department});

  @override
  $ImageModelCopyWith<$Res> get profileImage;
}

/// @nodoc
class __$$_PersonModelCopyWithImpl<$Res> extends _$PersonModelCopyWithImpl<$Res>
    implements _$$_PersonModelCopyWith<$Res> {
  __$$_PersonModelCopyWithImpl(_$_PersonModel _value, $Res Function(_$_PersonModel) _then)
      : super(_value, (v) => _then(v as _$_PersonModel));

  @override
  _$_PersonModel get _value => super._value as _$_PersonModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? profileImage = freezed,
    Object? department = freezed,
  }) {
    return _then(_$_PersonModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as ImageModel,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PersonModel implements _PersonModel {
  const _$_PersonModel({required this.name, required this.id, required this.profileImage, required this.department});

  @override
  final String name;
  @override
  final int id;
  @override
  final ImageModel profileImage;
  @override
  final String department;

  @override
  String toString() {
    return 'PersonModel(name: $name, id: $id, profileImage: $profileImage, department: $department)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.profileImage, profileImage) &&
            const DeepCollectionEquality().equals(other.department, department));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(profileImage),
      const DeepCollectionEquality().hash(department));

  @JsonKey(ignore: true)
  @override
  _$$_PersonModelCopyWith<_$_PersonModel> get copyWith =>
      __$$_PersonModelCopyWithImpl<_$_PersonModel>(this, _$identity);
}

abstract class _PersonModel implements PersonModel {
  const factory _PersonModel(
      {required final String name,
      required final int id,
      required final ImageModel profileImage,
      required final String department}) = _$_PersonModel;

  @override
  String get name => throw _privateConstructorUsedError;

  @override
  int get id => throw _privateConstructorUsedError;

  @override
  ImageModel get profileImage => throw _privateConstructorUsedError;

  @override
  String get department => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$_PersonModelCopyWith<_$_PersonModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImageModel {
  String get path => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageModelCopyWith<ImageModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageModelCopyWith<$Res> {
  factory $ImageModelCopyWith(ImageModel value, $Res Function(ImageModel) then) = _$ImageModelCopyWithImpl<$Res>;

  $Res call({String path});
}

/// @nodoc
class _$ImageModelCopyWithImpl<$Res> implements $ImageModelCopyWith<$Res> {
  _$ImageModelCopyWithImpl(this._value, this._then);

  final ImageModel _value;

  // ignore: unused_field
  final $Res Function(ImageModel) _then;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ImageModelCopyWith<$Res> implements $ImageModelCopyWith<$Res> {
  factory _$$_ImageModelCopyWith(_$_ImageModel value, $Res Function(_$_ImageModel) then) =
      __$$_ImageModelCopyWithImpl<$Res>;

  @override
  $Res call({String path});
}

/// @nodoc
class __$$_ImageModelCopyWithImpl<$Res> extends _$ImageModelCopyWithImpl<$Res> implements _$$_ImageModelCopyWith<$Res> {
  __$$_ImageModelCopyWithImpl(_$_ImageModel _value, $Res Function(_$_ImageModel) _then)
      : super(_value, (v) => _then(v as _$_ImageModel));

  @override
  _$_ImageModel get _value => super._value as _$_ImageModel;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(_$_ImageModel(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImageModel extends _ImageModel {
  const _$_ImageModel({required this.path}) : super._();

  @override
  final String path;

  @override
  String toString() {
    return 'ImageModel(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageModel &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  _$$_ImageModelCopyWith<_$_ImageModel> get copyWith => __$$_ImageModelCopyWithImpl<_$_ImageModel>(this, _$identity);
}

abstract class _ImageModel extends ImageModel {
  const factory _ImageModel({required final String path}) = _$_ImageModel;

  const _ImageModel._() : super._();

  @override
  String get path => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$_ImageModelCopyWith<_$_ImageModel> get copyWith => throw _privateConstructorUsedError;
}
