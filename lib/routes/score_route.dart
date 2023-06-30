import 'package:flutter/material.dart';

import '../controllers/score_controller.dart';
import '../core/navigation/route_builder.dart';

class ScoreRoute extends StatelessWidget {
  const ScoreRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RouteBuilder<ScoreController>(
      initController: () => ScoreController(),
      buildSuccessView: (ScoreController controller) {
        return const Scaffold(
          body: Center(
            child: Text('Score view'),
          ),
        );
      },
    );
  }
}
