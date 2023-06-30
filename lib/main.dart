import 'package:flutter/material.dart';
import 'core/utils/bindings.dart';
import 'core/navigation/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      getPages: pages,
      initialBinding: AppBindings(),
      title: 'Snake game',
      initialRoute: onboardingRoute,
    ),
  );
}
