import 'package:flutter/material.dart';

import '../controllers/home_controller.dart';
import '../core/navigation/route_builder.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RouteBuilder<HomeController>(
      initController: () => HomeController(),
      buildSuccessView: (HomeController controller) {
        return const Scaffold(
          body: Center(
            child: Text('Home view'),
          ),
        );
      },
    );
  }
}
