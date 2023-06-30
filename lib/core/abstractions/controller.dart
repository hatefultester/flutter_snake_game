import 'package:flutter/foundation.dart';
import '../utils/sync_state.dart';
import 'package:get/get.dart';
import 'failure.dart';

abstract class Controller extends GetxController {
  Failure? failure;

  final Rx<SyncState> state = Rx(SyncState.initial);

  @override
  Future<void> onInit() async {
    super.onInit();
    state.value = await initialize();
  }

  Future<void> reInit() async {
    startSyncing();
    state.value = await initialize();
  }

  Future<SyncState> initialize();

  startSyncing() => state.value = SyncState.loading;

  finishSyncing({Failure? failure}) {
    this.failure = failure;
    bool isSuccess = failure == null;
    state.value = isSuccess ? SyncState.success : SyncState.error;
  }

  msg(String message, {Map<String, dynamic>? params}) {
    if (kDebugMode) {
      print('''
    [Controller] $message
    [with params] ${params.toString()}''');
    }
  }
}