import 'package:flutter/material.dart';
import 'package:flutter_snake_game/views/loading_view.dart';
import '../../views/error_view.dart';
import '../abstractions/controller.dart';
import '../utils/sync_state.dart';
import 'package:get/get.dart';

class RouteBuilder<T extends Controller> extends StatelessWidget {
  final Widget Function(T controller)? buildErrorView;
  final Widget Function(T controller) buildSuccessView;
  final Widget Function(T controller)? buildInitialView;
  final Widget Function(T controller)? buildLoadingView;
  final T Function() initController;

  const RouteBuilder(
      {Key? key,
      this.buildErrorView,
      required this.buildSuccessView,
      this.buildInitialView,
      this.buildLoadingView,
      required this.initController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<T>(
      init: initController(),
      builder: (T controller) {
        return Obx(
          () {
            SyncState state = controller.state.value;

            switch (state) {
              case SyncState.loading:
                if (buildLoadingView != null) {
                  return buildLoadingView!(controller);
                } else {
                  return const LoadingView();
                }
              case SyncState.error:
                if (buildErrorView != null) {
                  return buildErrorView!(controller);
                } else {
                  return ErrorView(
                    failure: controller.failure,
                    onTryAgain: () {
                      controller.reInit();
                    },
                  );
                }
              case SyncState.initial:
                if (buildInitialView != null) {
                  return buildInitialView!(controller);
                } else {
                  return const LoadingView();
                }
              case SyncState.success:
                return buildSuccessView(controller);
            }
          },
        );
      },
    );
  }
}
