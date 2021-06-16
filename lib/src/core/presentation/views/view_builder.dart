import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/view_model.dart';
import '../view_models/view_state.dart';

class ViewBuilder<T extends ViewModel> extends StatelessWidget {
  const ViewBuilder({
    Key? key,
    this.onLoading,
    this.onError,
    required this.onReady,
    this.onInit,
  }) : super(key: key);

  final Widget Function()? onLoading;
  final Widget Function(T)? onError;
  final Widget Function(T) onReady;
  final void Function(T)? onInit;

  @override
  Widget build(BuildContext context) {
    if (onInit != null) onInit!(Provider.of<T>(context, listen: false));
    return Consumer<T>(
      builder: (cxt, viewModel, child) {
        switch (viewModel.viewState) {
          case ViewState.Loading:
            if (onLoading != null) return onLoading!();
            return Center(
              child: CircularProgressIndicator(),
            );

          case ViewState.Error:
            if (onError != null) return onError!(viewModel);
            return Center(
              child: Text(viewModel.errorMsg ?? "Failed to load!"),
            );

          case ViewState.Completed:
          default:
            return onReady(viewModel);
        }
      },
    );
  }
}
