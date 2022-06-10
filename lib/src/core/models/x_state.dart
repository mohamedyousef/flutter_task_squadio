import 'package:freezed_annotation/freezed_annotation.dart';

part 'x_state.freezed.dart';

@freezed
class XState<T> with _$XState<T> {
  const XState._();

  const factory XState.loading() = _XStateLoading;

  const factory XState.data(final T data) = XStateData<T>;

  const factory XState.error(final String message) = XStateError;

  bool get isLoading => maybeWhen(loading: () => true, orElse: () => false);

  bool get hasData => maybeWhen(data: (_) => true, orElse: () => false);

  void ifHasError(void Function(String errorMessage) function) {
    final error = maybeWhen(error: (error) => error, orElse: () => null);
    if (error != null) function(error);
  }

  R? ifHasData<R>(R Function(T data) dataFunction) {
    final data = maybeWhen(
      data: (data) => data,
      orElse: () => null,
    );
    if (data != null) {
      return dataFunction(data);
    }
  }
}
