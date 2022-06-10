// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Result<T, R> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(R error) failure,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(R error)? failure,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(R error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_success<T, R> value) success,
    required TResult Function(_failure<T, R> value) failure,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_success<T, R> value)? success,
    TResult Function(_failure<T, R> value)? failure,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_success<T, R> value)? success,
    TResult Function(_failure<T, R> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, R, $Res> {
  factory $ResultCopyWith(Result<T, R> value, $Res Function(Result<T, R>) then) = _$ResultCopyWithImpl<T, R, $Res>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, R, $Res> implements $ResultCopyWith<T, R, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result<T, R> _value;

  // ignore: unused_field
  final $Res Function(Result<T, R>) _then;
}

/// @nodoc
abstract class _$$_successCopyWith<T, R, $Res> {
  factory _$$_successCopyWith(_$_success<T, R> value, $Res Function(_$_success<T, R>) then) =
      __$$_successCopyWithImpl<T, R, $Res>;

  $Res call({T data});
}

/// @nodoc
class __$$_successCopyWithImpl<T, R, $Res> extends _$ResultCopyWithImpl<T, R, $Res>
    implements _$$_successCopyWith<T, R, $Res> {
  __$$_successCopyWithImpl(_$_success<T, R> _value, $Res Function(_$_success<T, R>) _then)
      : super(_value, (v) => _then(v as _$_success<T, R>));

  @override
  _$_success<T, R> get _value => super._value as _$_success<T, R>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_success<T, R>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_success<T, R> extends _success<T, R> {
  const _$_success(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'Result<$T, $R>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_success<T, R> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_successCopyWith<T, R, _$_success<T, R>> get copyWith =>
      __$$_successCopyWithImpl<T, R, _$_success<T, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(R error) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(R error)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(R error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_success<T, R> value) success,
    required TResult Function(_failure<T, R> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_success<T, R> value)? success,
    TResult Function(_failure<T, R> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_success<T, R> value)? success,
    TResult Function(_failure<T, R> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success<T, R> extends Result<T, R> {
  const factory _success(final T data) = _$_success<T, R>;

  const _success._() : super._();

  T get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$$_successCopyWith<T, R, _$_success<T, R>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_failureCopyWith<T, R, $Res> {
  factory _$$_failureCopyWith(_$_failure<T, R> value, $Res Function(_$_failure<T, R>) then) =
      __$$_failureCopyWithImpl<T, R, $Res>;

  $Res call({R error});
}

/// @nodoc
class __$$_failureCopyWithImpl<T, R, $Res> extends _$ResultCopyWithImpl<T, R, $Res>
    implements _$$_failureCopyWith<T, R, $Res> {
  __$$_failureCopyWithImpl(_$_failure<T, R> _value, $Res Function(_$_failure<T, R>) _then)
      : super(_value, (v) => _then(v as _$_failure<T, R>));

  @override
  _$_failure<T, R> get _value => super._value as _$_failure<T, R>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_failure<T, R>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as R,
    ));
  }
}

/// @nodoc

class _$_failure<T, R> extends _failure<T, R> {
  const _$_failure(this.error) : super._();

  @override
  final R error;

  @override
  String toString() {
    return 'Result<$T, $R>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_failure<T, R> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_failureCopyWith<T, R, _$_failure<T, R>> get copyWith =>
      __$$_failureCopyWithImpl<T, R, _$_failure<T, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(R error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(R error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(R error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_success<T, R> value) success,
    required TResult Function(_failure<T, R> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_success<T, R> value)? success,
    TResult Function(_failure<T, R> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_success<T, R> value)? success,
    TResult Function(_failure<T, R> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _failure<T, R> extends Result<T, R> {
  const factory _failure(final R error) = _$_failure<T, R>;

  const _failure._() : super._();

  R get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$$_failureCopyWith<T, R, _$_failure<T, R>> get copyWith => throw _privateConstructorUsedError;
}
