
import '../core/abstractions/controller.dart';
import '../core/interfaces/i_score_controller.dart';
import '../core/utils/sync_state.dart';

class ScoreController  extends Controller implements IScoreController {
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
  void navigateToHomeRoute() {
    // TODO: implement navigateToHomeRoute
  }
}