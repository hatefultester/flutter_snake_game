import 'package:dartz/dartz.dart';

import '../abstractions/failure.dart';
import '../model/user_persistence.dart';

abstract class IGlobalService {
  Future<Either<AdsLoadingFailure, void>> preloadInterstitialAd();
  Future<Either<NoAdsLoadedFailure, void>> displayInterstitialAd();
  Future<Either<NoInternetConnectionFailure, void>> checkConnectivity();
  Future<Either<PersistenceFailure, UserPersistence>> fetchDataFromPersistence();
  Future<Either<PersistenceFailure, UserPersistence>> updateUserPersistence({required UserPersistence persistence});
  Future<Either<PersistenceFailure, void>> resetPersistenceData();
}