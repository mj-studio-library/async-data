import 'dart:async';

import 'package:rxdart/rxdart.dart';

import 'async_data.dart';

typedef OnStart = void Function();
typedef OnDone = void Function();
typedef OnSuccess<T> = void Function(T data);
typedef OnFail = void Function(dynamic e);

abstract class Task<T> {
  final BehaviorSubject<AsyncData<T>> _subject =
      BehaviorSubject.seeded(const AsyncData.initial());
  ValueStream<AsyncData<T>> get stream => _subject.stream;
  T? get data => _subject.value.data;

  List<dynamic> params = [];

  abstract OnStart? onStart;
  abstract OnDone? onDone;
  abstract OnSuccess<T>? onSuccess;
  abstract OnFail? onFail;
  bool _hasBeenSuccess = false;

  void setData(T data) => _subject.value = AsyncData.success(data);
  void updateData(T Function(T? current) updateFn) => setData(updateFn(data));

  Future<T> _call(
    FutureOr<T> Function() fn,
    List<dynamic> params, {
    OnStart? onStartParam,
    OnDone? onDoneParam,
    OnSuccess<T>? onSuccessParam,
    OnFail? onFailParam,
    bool? skipLoadingState,
  }) async {
    this.params = params;
    if (skipLoadingState != true || !_hasBeenSuccess) {
      _subject.value = AsyncData.loading(_subject.value.data);
    }
    onStart?.call();
    onStartParam?.call();
    try {
      var result = await fn();
      _subject.value = AsyncData.success(result);
      setData(result);
      onSuccess?.call(result);
      onSuccessParam?.call(result);
      _hasBeenSuccess = true;
      return result;
    } catch (e) {
      _subject.value = AsyncData.fail(e);
      onFail?.call(e);
      onFailParam?.call(e);
      rethrow;
    } finally {
      onDone?.call();
      onDoneParam?.call();
    }
  }
}

class Task0<T> extends Task<T> {
  Task0(
    this.fn, {
    this.onStart,
    this.onSuccess,
    this.onFail,
    this.onDone,
  });
  final Future<T> Function() fn;
  Future<T> call({
    OnFail? onFail,
    OnStart? onStart,
    OnSuccess<T>? onSuccess,
    OnDone? onDone,
    bool? skipLoadingState,
  }) =>
      _call(
        () => fn(),
        [],
        onFailParam: onFail,
        onStartParam: onStart,
        onDoneParam: onDone,
        onSuccessParam: onSuccess,
        skipLoadingState: skipLoadingState,
      );

  @override
  OnFail? onFail;

  @override
  OnStart? onStart;

  @override
  OnDone? onDone;

  @override
  OnSuccess<T>? onSuccess;
}

class Task1<T, P1> extends Task<T> {
  Task1(
    this.fn, {
    this.onStart,
    this.onSuccess,
    this.onFail,
    this.onDone,
  });
  final Future<T> Function(P1 p1) fn;
  Future<T> call(
    P1 p1, {
    OnFail? onFail,
    OnStart? onStart,
    OnSuccess<T>? onSuccess,
    OnDone? onDone,
    bool? skipLoadingState,
  }) =>
      _call(
        () => fn(p1),
        [p1],
        onFailParam: onFail,
        onStartParam: onStart,
        onDoneParam: onDone,
        onSuccessParam: onSuccess,
        skipLoadingState: skipLoadingState,
      );

  @override
  OnFail? onFail;

  @override
  OnStart? onStart;

  @override
  OnDone? onDone;

  @override
  OnSuccess<T>? onSuccess;
}

class Task2<T, P1, P2> extends Task<T> {
  Task2(
    this.fn, {
    this.onStart,
    this.onSuccess,
    this.onFail,
    this.onDone,
  });
  final Future<T> Function(P1 p1, P2 p2) fn;
  Future<T> call(
    P1 p1,
    P2 p2, {
    OnFail? onFail,
    OnStart? onStart,
    OnSuccess<T>? onSuccess,
    OnDone? onDone,
    bool? skipLoadingState,
  }) =>
      _call(
        () => fn(p1, p2),
        [p1, p2],
        onFailParam: onFail,
        onStartParam: onStart,
        onDoneParam: onDone,
        onSuccessParam: onSuccess,
        skipLoadingState: skipLoadingState,
      );

  @override
  OnFail? onFail;

  @override
  OnStart? onStart;

  @override
  OnDone? onDone;

  @override
  OnSuccess<T>? onSuccess;
}

class Task3<T, P1, P2, P3> extends Task<T> {
  Task3(
    this.fn, {
    this.onStart,
    this.onSuccess,
    this.onFail,
    this.onDone,
  });
  final Future<T> Function(P1 p1, P2 p2, P3 p3) fn;
  Future<T> call(
    P1 p1,
    P2 p2,
    P3 p3, {
    OnFail? onFail,
    OnStart? onStart,
    OnSuccess<T>? onSuccess,
    OnDone? onDone,
    bool? skipLoadingState,
  }) =>
      _call(
        () => fn(p1, p2, p3),
        [p1, p2, p3],
        onFailParam: onFail,
        onStartParam: onStart,
        onDoneParam: onDone,
        onSuccessParam: onSuccess,
        skipLoadingState: skipLoadingState,
      );

  @override
  OnFail? onFail;

  @override
  OnStart? onStart;

  @override
  OnDone? onDone;

  @override
  OnSuccess<T>? onSuccess;
}
