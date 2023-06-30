import 'dart:async';

import 'package:dartz/dartz.dart';

import '../abstractions/failure.dart';

enum PlayerDirection { up, down, left, right }

enum GameState { initial, active, paused, dead }

abstract class IGameController {
  Future<void> showExitGameDialog();

  Future<Either<TimerFailure, void>> startGameTimer({required Timer timer});

  Future<Either<PersistenceFailure, void>> prepareGameVariables();

  GameState generateFoodIndex(
      {required int range, required List<List<int>> usedPositions});

  GameState handlePlayerMove({required PlayerDirection direction});

  bool changePlayerDirection({required PlayerDirection newDirection});

  int handlePlayerEatFood({required int foodIndex, required int currentScore});

  void handlePlayerDied();
}
