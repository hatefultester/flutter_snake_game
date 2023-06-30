import 'package:flutter/material.dart';
import 'package:flutter_snake_game/controllers/settings_controller.dart';

import '../core/navigation/route_builder.dart';

class SettingsRoute extends StatelessWidget {
  const SettingsRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RouteBuilder<SettingsController>(
      initController: () => SettingsController(),
      buildSuccessView: (SettingsController controller) {
        return const Scaffold(
          body: Center(
            child: Text('Settings view'),
          ),
        );
      },
    );
  }
}
