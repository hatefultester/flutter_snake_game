import 'package:flutter/material.dart';
import 'package:flutter_snake_game/controllers/onboarding_controller.dart';

import '../core/navigation/route_builder.dart';

class OnboardingRoute extends StatelessWidget {
  const OnboardingRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RouteBuilder<OnboardingController>(
      initController: () => OnboardingController(),
      buildSuccessView: (OnboardingController controller) {
        return const Scaffold(
          body: Center(
            child: Text('Onboarding view'),
          ),
        );
      },
    );
  }
}
