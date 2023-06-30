import 'dart:async';

import 'package:dartz/dartz.dart';

import 'package:flutter_snake_game/core/abstractions/failure.dart';

import '../core/abstractions/controller.dart';
import '../core/interfaces/i_game_controller.dart';
import '../core/utils/sync_state.dart';


class GameController extends Controller implements IGameController {
  @override
  bool changePlayerDirection({required PlayerDirection newDirection}) {
    // TODO: implement changePlayerDirection
    throw UnimplementedError();
  }

  @override
  GameState generateFoodIndex({required int range, required List<List<int>> usedPositions}) {
    // TODO: implement generateFoodIndex
    throw UnimplementedError();
  }

  @override
  void handlePlayerDied() {
    // TODO: implement handlePlayerDied
  }

  @override
  int handlePlayerEatFood({required int foodIndex, required int currentScore}) {
    // TODO: implement handlePlayerEatFood
    throw UnimplementedError();
  }

  @override
  GameState handlePlayerMove({required PlayerDirection direction}) {
    // TODO: implement handlePlayerMove
    throw UnimplementedError();
  }

  @override
  Future<SyncState> initialize() {
    // TODO: implement initialize
    throw UnimplementedError();
  }

  @override
  Future<Either<PersistenceFailure, void>> prepareGameVariables() {
    // TODO: implement prepareGameVariables
    throw UnimplementedError();
  }

  @override
  Future<void> showExitGameDialog() {
    // TODO: implement showExitGameDialog
    throw UnimplementedError();
  }

  @override
  Future<Either<TimerFailure, void>> startGameTimer({required Timer timer}) {
    // TODO: implement startGameTimer
    throw UnimplementedError();
  }

}