import 'dart:ui';


import 'package:dartz/dartz.dart';

import 'package:flutter_snake_game/core/abstractions/failure.dart';

import '../core/abstractions/controller.dart';
import '../core/interfaces/i_settings_controller.dart';
import '../core/utils/sync_state.dart';

class SettingsController extends Controller implements ISettingsController {
  @override
  void handleNewSnakeColorSelected({required Color color}) {
    // TODO: implement handleNewSnakeColorSelected
  }

  @override
  Future<SyncState> initialize() {
    // TODO: implement initialize
    throw UnimplementedError();
  }

  @override
  Future<void> showResetGameScoreDialog() {
    // TODO: implement showResetGameScoreDialog
    throw UnimplementedError();
  }

  @override
  Future<Either<PersistenceFailure, void>> updateSnakeColor(Color color) {
    // TODO: implement updateSnakeColor
    throw UnimplementedError();
  }

}