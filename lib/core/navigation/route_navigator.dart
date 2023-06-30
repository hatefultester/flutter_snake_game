import 'routes.dart';
import 'package:get/get.dart';

class RouteNavigator {
  static toGame({bool off = false}) {
    _navigate(off: off, route: gameRoute);
  }

  static toScore({bool off = true}) {
    _navigate(off: off, route: scoreRoute);
  }

  static toHome({bool off = true}) {
    _navigate(off: off, route: homeRoute);
  }

  static toSettings({bool off = false}) {
    _navigate(off: off, route: settingsRoute);
  }

  static _navigate({
    required bool off, required String route
}) {
    if (off) {
      Get.offAndToNamed(route);
    } else {
      Get.toNamed(route);
    }
  }

  static goBack() {
    Get.back();
  }
}
