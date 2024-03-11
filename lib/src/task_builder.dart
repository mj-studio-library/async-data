import 'package:flutter/material.dart';

import 'async_data.dart';
import 'async_data_builder.dart';
import 'task.dart';

class TaskBuilder<T> extends StatelessWidget {
  const TaskBuilder(
    this.query, {
    super.key,
    this.initial,
    this.loading,
    this.success,
    this.fail,
    this.wrapper,
    this.withoutData,
    this.withData,
    this.emptyData,
    this.any,
    this.listener,
    this.listenWhen,
    this.enableAnimatedSwitcher,
    this.isSuccessAnd,
  });

  final Task<T> query;
  final WidgetBuilder? initial;
  final Widget Function(BuildContext context, AsyncData<T> state, T? data)?
      loading;
  final Widget Function(BuildContext context, AsyncData<T> state, T data)?
      success;
  final Widget Function(BuildContext context, AsyncData<T> state, dynamic e)?
      fail;
  final Widget Function(BuildContext context, AsyncData<T> state, Widget child)?
      wrapper;
  final Widget Function(BuildContext context, AsyncData<T> state)? withoutData;
  final Widget Function(BuildContext context, AsyncData<T> state, T data)?
      withData;
  final Widget Function(BuildContext context, AsyncData<T> state)? emptyData;
  final Widget Function(BuildContext context, AsyncData<T> state)? any;
  final void Function(BuildContext context, AsyncData<T> state)? listener;
  final bool Function(AsyncData<T> state)? listenWhen;

  final bool? enableAnimatedSwitcher;
  final bool Function(AsyncData<T> state, T? data)? isSuccessAnd;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: query.stream,
      initialData: query.stream.value,
      builder: (context, snapshot) {
        assert(snapshot.hasData);
        var state = snapshot.data!;

        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          if (listener != null) {
            if (listenWhen?.call(state) ?? true) {
              listener?.call(context, state);
            }
          }
        });

        return AsyncDataBuilder(
          state,
          initial: initial,
          loading: loading,
          success: success,
          fail: fail,
          wrapper: wrapper,
          withData: withData,
          withoutData: withoutData,
          emptyData: emptyData,
          any: any,
          enableAnimatedSwitcher: enableAnimatedSwitcher ?? false,
          isSuccessAnd: isSuccessAnd,
        );
      },
    );
  }
}
