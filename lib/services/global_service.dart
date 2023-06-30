import 'package:dartz/dartz.dart';
import '../core/abstractions/failure.dart';
import '../core/interfaces/i_global_service.dart';
import '../core/model/user_persistence.dart';
import 'package:get/get.dart';

class GlobalService extends GetxService implements IGlobalService {
  static GlobalService get to => Get.find();

  @override
  Future<Either<NoInternetConnectionFailure, void>> checkConnectivity() {
    // TODO: implement checkConnectivity
    throw UnimplementedError();
  }

  @override
  Future<Either<NoAdsLoadedFailure, void>> displayInterstitialAd() {
    // TODO: implement displayInterstitialAd
    throw UnimplementedError();
  }

  @override
  Future<Either<PersistenceFailure, UserPersistence>> fetchDataFromPersistence() {
    // TODO: implement fetchDataFromPersistence
    throw UnimplementedError();
  }

  @override
  Future<Either<AdsLoadingFailure, void>> preloadInterstitialAd() {
    // TODO: implement preloadInterstitialAd
    throw UnimplementedError();
  }

  @override
  Future<Either<PersistenceFailure, void>> resetPersistenceData() {
    // TODO: implement resetPersistenceData
    throw UnimplementedError();
  }

  @override
  Future<Either<PersistenceFailure, UserPersistence>> updateUserPersistence({required UserPersistence  persistence}) {
    // TODO: implement updateUserPersistence
    throw UnimplementedError();
  }
}