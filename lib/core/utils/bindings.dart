import 'package:flutter_snake_game/services/global_service.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<GlobalService>(
      GlobalService(),
    );
  }
}
