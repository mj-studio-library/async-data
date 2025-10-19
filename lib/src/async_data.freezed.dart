// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'async_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AsyncData<T> {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AsyncData<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AsyncData<$T>()';
  }
}

/// @nodoc
class $AsyncDataCopyWith<T, $Res> {
  $AsyncDataCopyWith(AsyncData<T> _, $Res Function(AsyncData<T>) __);
}

/// Adds pattern-matching-related methods to [AsyncData].
extension AsyncDataPatterns<T> on AsyncData<T> {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncInitial<T> value)? initial,
    TResult Function(AsyncLoading<T> value)? loading,
    TResult Function(AsyncSuccess<T> value)? success,
    TResult Function(AsyncFail<T> value)? fail,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AsyncInitial() when initial != null:
        return initial(_that);
      case AsyncLoading() when loading != null:
        return loading(_that);
      case AsyncSuccess() when success != null:
        return success(_that);
      case AsyncFail() when fail != null:
        return fail(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncInitial<T> value) initial,
    required TResult Function(AsyncLoading<T> value) loading,
    required TResult Function(AsyncSuccess<T> value) success,
    required TResult Function(AsyncFail<T> value) fail,
  }) {
    final _that = this;
    switch (_that) {
      case AsyncInitial():
        return initial(_that);
      case AsyncLoading():
        return loading(_that);
      case AsyncSuccess():
        return success(_that);
      case AsyncFail():
        return fail(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncInitial<T> value)? initial,
    TResult? Function(AsyncLoading<T> value)? loading,
    TResult? Function(AsyncSuccess<T> value)? success,
    TResult? Function(AsyncFail<T> value)? fail,
  }) {
    final _that = this;
    switch (_that) {
      case AsyncInitial() when initial != null:
        return initial(_that);
      case AsyncLoading() when loading != null:
        return loading(_that);
      case AsyncSuccess() when success != null:
        return success(_that);
      case AsyncFail() when fail != null:
        return fail(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(T? data)? loading,
    TResult Function(T data)? success,
    TResult Function(dynamic e)? fail,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AsyncInitial() when initial != null:
        return initial();
      case AsyncLoading() when loading != null:
        return loading(_that.data);
      case AsyncSuccess() when success != null:
        return success(_that.data);
      case AsyncFail() when fail != null:
        return fail(_that.e);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(T? data) loading,
    required TResult Function(T data) success,
    required TResult Function(dynamic e) fail,
  }) {
    final _that = this;
    switch (_that) {
      case AsyncInitial():
        return initial();
      case AsyncLoading():
        return loading(_that.data);
      case AsyncSuccess():
        return success(_that.data);
      case AsyncFail():
        return fail(_that.e);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? success,
    TResult? Function(dynamic e)? fail,
  }) {
    final _that = this;
    switch (_that) {
      case AsyncInitial() when initial != null:
        return initial();
      case AsyncLoading() when loading != null:
        return loading(_that.data);
      case AsyncSuccess() when success != null:
        return success(_that.data);
      case AsyncFail() when fail != null:
        return fail(_that.e);
      case _:
        return null;
    }
  }
}

/// @nodoc

class AsyncInitial<T> extends AsyncData<T> {
  const AsyncInitial() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AsyncInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AsyncData<$T>.initial()';
  }
}

/// @nodoc

class AsyncLoading<T> extends AsyncData<T> {
  const AsyncLoading([this.data]) : super._();

  final T? data;

  /// Create a copy of AsyncData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AsyncLoadingCopyWith<T, AsyncLoading<T>> get copyWith =>
      _$AsyncLoadingCopyWithImpl<T, AsyncLoading<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AsyncLoading<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'AsyncData<$T>.loading(data: $data)';
  }
}

/// @nodoc
abstract mixin class $AsyncLoadingCopyWith<T, $Res>
    implements $AsyncDataCopyWith<T, $Res> {
  factory $AsyncLoadingCopyWith(
          AsyncLoading<T> value, $Res Function(AsyncLoading<T>) _then) =
      _$AsyncLoadingCopyWithImpl;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class _$AsyncLoadingCopyWithImpl<T, $Res>
    implements $AsyncLoadingCopyWith<T, $Res> {
  _$AsyncLoadingCopyWithImpl(this._self, this._then);

  final AsyncLoading<T> _self;
  final $Res Function(AsyncLoading<T>) _then;

  /// Create a copy of AsyncData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
  }) {
    return _then(AsyncLoading<T>(
      freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class AsyncSuccess<T> extends AsyncData<T> {
  const AsyncSuccess(this.data) : super._();

  final T data;

  /// Create a copy of AsyncData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AsyncSuccessCopyWith<T, AsyncSuccess<T>> get copyWith =>
      _$AsyncSuccessCopyWithImpl<T, AsyncSuccess<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AsyncSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'AsyncData<$T>.success(data: $data)';
  }
}

/// @nodoc
abstract mixin class $AsyncSuccessCopyWith<T, $Res>
    implements $AsyncDataCopyWith<T, $Res> {
  factory $AsyncSuccessCopyWith(
          AsyncSuccess<T> value, $Res Function(AsyncSuccess<T>) _then) =
      _$AsyncSuccessCopyWithImpl;
  @useResult
  $Res call({T data});
}

/// @nodoc
class _$AsyncSuccessCopyWithImpl<T, $Res>
    implements $AsyncSuccessCopyWith<T, $Res> {
  _$AsyncSuccessCopyWithImpl(this._self, this._then);

  final AsyncSuccess<T> _self;
  final $Res Function(AsyncSuccess<T>) _then;

  /// Create a copy of AsyncData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
  }) {
    return _then(AsyncSuccess<T>(
      freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class AsyncFail<T> extends AsyncData<T> {
  const AsyncFail(this.e) : super._();

  final dynamic e;

  /// Create a copy of AsyncData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AsyncFailCopyWith<T, AsyncFail<T>> get copyWith =>
      _$AsyncFailCopyWithImpl<T, AsyncFail<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AsyncFail<T> &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @override
  String toString() {
    return 'AsyncData<$T>.fail(e: $e)';
  }
}

/// @nodoc
abstract mixin class $AsyncFailCopyWith<T, $Res>
    implements $AsyncDataCopyWith<T, $Res> {
  factory $AsyncFailCopyWith(
          AsyncFail<T> value, $Res Function(AsyncFail<T>) _then) =
      _$AsyncFailCopyWithImpl;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class _$AsyncFailCopyWithImpl<T, $Res> implements $AsyncFailCopyWith<T, $Res> {
  _$AsyncFailCopyWithImpl(this._self, this._then);

  final AsyncFail<T> _self;
  final $Res Function(AsyncFail<T>) _then;

  /// Create a copy of AsyncData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? e = freezed,
  }) {
    return _then(AsyncFail<T>(
      freezed == e
          ? _self.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

// dart format on
