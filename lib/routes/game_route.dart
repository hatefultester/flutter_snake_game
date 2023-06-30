import 'package:flutter/material.dart';
import '../controllers/game_controller.dart';
import '../core/navigation/route_builder.dart';

class GameRoute extends StatelessWidget {
  const GameRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RouteBuilder<GameController>(
      initController: () => GameController(),
      buildSuccessView: (GameController controller) {
        return const Scaffold(
          body: Center(
            child: Text('Game view'),
          ),
        );
      },
    );
  }
}
