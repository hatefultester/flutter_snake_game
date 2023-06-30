
import '../core/abstractions/controller.dart';
import '../core/interfaces/i_home_controller.dart';
import '../core/utils/sync_state.dart';

class HomeController  extends Controller implements IHomeController {
  @override
  Future<SyncState> initialize() {
    // TODO: implement initialize
    throw UnimplementedError();
  }

  @override
  void navigateToGameRoute() {
    // TODO: implement navigateToGameRoute
  }

  @override
  void navigateToSettingsRoute() {
    // TODO: implement navigateToSettingsRoute
  }

}