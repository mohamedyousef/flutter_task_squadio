// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'x_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$XState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_XStateLoading<T> value) loading,
    required TResult Function(XStateData<T> value) data,
    required TResult Function(XStateError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_XStateLoading<T> value)? loading,
    TResult Function(XStateData<T> value)? data,
    TResult Function(XStateError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_XStateLoading<T> value)? loading,
    TResult Function(XStateData<T> value)? data,
    TResult Function(XStateError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XStateCopyWith<T, $Res> {
  factory $XStateCopyWith(XState<T> value, $Res Function(XState<T>) then) = _$XStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$XStateCopyWithImpl<T, $Res> implements $XStateCopyWith<T, $Res> {
  _$XStateCopyWithImpl(this._value, this._then);

  final XState<T> _value;

  // ignore: unused_field
  final $Res Function(XState<T>) _then;
}

/// @nodoc
abstract class _$$_XStateLoadingCopyWith<T, $Res> {
  factory _$$_XStateLoadingCopyWith(_$_XStateLoading<T> value, $Res Function(_$_XStateLoading<T>) then) =
      __$$_XStateLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_XStateLoadingCopyWithImpl<T, $Res> extends _$XStateCopyWithImpl<T, $Res>
    implements _$$_XStateLoadingCopyWith<T, $Res> {
  __$$_XStateLoadingCopyWithImpl(_$_XStateLoading<T> _value, $Res Function(_$_XStateLoading<T>) _then)
      : super(_value, (v) => _then(v as _$_XStateLoading<T>));

  @override
  _$_XStateLoading<T> get _value => super._value as _$_XStateLoading<T>;
}

/// @nodoc

class _$_XStateLoading<T> extends _XStateLoading<T> {
  const _$_XStateLoading() : super._();

  @override
  String toString() {
    return 'XState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_XStateLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_XStateLoading<T> value) loading,
    required TResult Function(XStateData<T> value) data,
    required TResult Function(XStateError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_XStateLoading<T> value)? loading,
    TResult Function(XStateData<T> value)? data,
    TResult Function(XStateError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_XStateLoading<T> value)? loading,
    TResult Function(XStateData<T> value)? data,
    TResult Function(XStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _XStateLoading<T> extends XState<T> {
  const factory _XStateLoading() = _$_XStateLoading<T>;

  const _XStateLoading._() : super._();
}

/// @nodoc
abstract class _$$XStateDataCopyWith<T, $Res> {
  factory _$$XStateDataCopyWith(_$XStateData<T> value, $Res Function(_$XStateData<T>) then) =
      __$$XStateDataCopyWithImpl<T, $Res>;

  $Res call({T data});
}

/// @nodoc
class __$$XStateDataCopyWithImpl<T, $Res> extends _$XStateCopyWithImpl<T, $Res>
    implements _$$XStateDataCopyWith<T, $Res> {
  __$$XStateDataCopyWithImpl(_$XStateData<T> _value, $Res Function(_$XStateData<T>) _then)
      : super(_value, (v) => _then(v as _$XStateData<T>));

  @override
  _$XStateData<T> get _value => super._value as _$XStateData<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$XStateData<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$XStateData<T> extends XStateData<T> {
  const _$XStateData(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'XState<$T>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$XStateData<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$XStateDataCopyWith<T, _$XStateData<T>> get copyWith =>
      __$$XStateDataCopyWithImpl<T, _$XStateData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String message) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_XStateLoading<T> value) loading,
    required TResult Function(XStateData<T> value) data,
    required TResult Function(XStateError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_XStateLoading<T> value)? loading,
    TResult Function(XStateData<T> value)? data,
    TResult Function(XStateError<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_XStateLoading<T> value)? loading,
    TResult Function(XStateData<T> value)? data,
    TResult Function(XStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class XStateData<T> extends XState<T> {
  const factory XStateData(final T data) = _$XStateData<T>;

  const XStateData._() : super._();

  T get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$$XStateDataCopyWith<T, _$XStateData<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$XStateErrorCopyWith<T, $Res> {
  factory _$$XStateErrorCopyWith(_$XStateError<T> value, $Res Function(_$XStateError<T>) then) =
      __$$XStateErrorCopyWithImpl<T, $Res>;

  $Res call({String message});
}

/// @nodoc
class __$$XStateErrorCopyWithImpl<T, $Res> extends _$XStateCopyWithImpl<T, $Res>
    implements _$$XStateErrorCopyWith<T, $Res> {
  __$$XStateErrorCopyWithImpl(_$XStateError<T> _value, $Res Function(_$XStateError<T>) _then)
      : super(_value, (v) => _then(v as _$XStateError<T>));

  @override
  _$XStateError<T> get _value => super._value as _$XStateError<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$XStateError<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$XStateError<T> extends XStateError<T> {
  const _$XStateError(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'XState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$XStateError<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$XStateErrorCopyWith<T, _$XStateError<T>> get copyWith =>
      __$$XStateErrorCopyWithImpl<T, _$XStateError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_XStateLoading<T> value) loading,
    required TResult Function(XStateData<T> value) data,
    required TResult Function(XStateError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_XStateLoading<T> value)? loading,
    TResult Function(XStateData<T> value)? data,
    TResult Function(XStateError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_XStateLoading<T> value)? loading,
    TResult Function(XStateData<T> value)? data,
    TResult Function(XStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class XStateError<T> extends XState<T> {
  const factory XStateError(final String message) = _$XStateError<T>;

  const XStateError._() : super._();

  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$$XStateErrorCopyWith<T, _$XStateError<T>> get copyWith => throw _privateConstructorUsedError;
}
