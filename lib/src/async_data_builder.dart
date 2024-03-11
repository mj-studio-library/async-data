import 'package:flutter/material.dart';

import 'async_data.dart';
import 'internal/conditional_builder.dart';

class AsyncDataBuilder<T> extends StatelessWidget {
  const AsyncDataBuilder(
    this.data, {
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
    this.enableAnimatedSwitcher = false,
    this.isSuccessAnd,
  });

  final AsyncData<T> data;

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

  final bool enableAnimatedSwitcher;
  final bool Function(AsyncData<T> state, T? data)? isSuccessAnd;

  @override
  Widget build(BuildContext context) {
    // match more specific condition first
    Widget? content;

    if (data.showEmptyData) {
      content ??= emptyData?.call(context, data);
    }

    if (data is AsyncSuccess &&
        (isSuccessAnd?.call(data, data.data) ?? false)) {
      content ??= success?.call(context, data, data.data as T);
    }

    content ??= data.map(
      initial: (state) => initial?.call(context),
      loading: (state) => loading?.call(context, state, state.data),
      success: (state) => (isSuccessAnd?.call(data, data.data) ?? true)
          ? success?.call(context, state, state.data)
          : null,
      fail: (state) => fail?.call(context, state, state.data),
    );
    if (data.data == null) {
      content ??= withoutData?.call(context, data);
    }
    if (data.data != null) {
      content ??= withData?.call(context, data, data.data as T);
    }
    content ??= any?.call(context, data);
    content ??= const SizedBox.shrink();
    content = wrapper?.call(context, data, content) ?? content;

    return ConditionalBuilder(
      wrapper: (context, child) => AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        layoutBuilder: (currentChild, previousChildren) => Stack(
          fit: StackFit.expand,
          children: <Widget>[
            ...previousChildren,
            if (currentChild != null) currentChild,
          ],
        ),
        child: child,
      ),
      condition: enableAnimatedSwitcher,
      child: content,
    );
  }
}
