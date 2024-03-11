import 'package:freezed_annotation/freezed_annotation.dart';

part 'async_data.freezed.dart';

@freezed
class AsyncData<T> with _$AsyncData<T> {
  const AsyncData._();

  const factory AsyncData.initial() = AsyncInitial<T>;
  const factory AsyncData.loading([T? data]) = AsyncLoading<T>;
  const factory AsyncData.success(T data) = AsyncSuccess<T>;
  const factory AsyncData.fail(dynamic e) = AsyncFail<T>;

  bool get isInitial => this is AsyncInitial;
  bool get isLoading => this is AsyncLoading;
  bool get isFetching =>
      this is AsyncLoading && (this as AsyncLoading).data != null;
  bool get isSuccess => this is AsyncSuccess;
  bool get isFail => this is AsyncFail;

  T? get data => whenOrNull<T?>(
        success: (data) => data,
        loading: (data) => data,
      );

  bool get showEmptyData => data is List && (data as List).isEmpty;
}
