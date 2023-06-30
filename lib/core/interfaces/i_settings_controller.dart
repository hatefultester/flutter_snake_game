
import 'dart:ui';

import 'package:dartz/dartz.dart';
import '../abstractions/failure.dart';

abstract class ISettingsController {

  Future<Either<PersistenceFailure, void>> updateSnakeColor(Color color);
  void handleNewSnakeColorSelected({required Color color});
  Future<void> showResetGameScoreDialog();
}

