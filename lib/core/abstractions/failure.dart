abstract class Failure {
  final String message;
  final String debugMessage;

  Failure({
    required this.message,
    required this.debugMessage,
  });
}

class UnexpectedFailure extends Failure {
  UnexpectedFailure({required super.message, required super.debugMessage});
}

class NoAdsLoadedFailure extends Failure {
  NoAdsLoadedFailure({required super.message, required super.debugMessage});
}

abstract class AdsLoadingFailure extends Failure {
  AdsLoadingFailure({required super.message, required super.debugMessage});
}

class NoInternetConnectionFailure extends AdsLoadingFailure {
  NoInternetConnectionFailure(
      {required super.message, required super.debugMessage});
}

class AdAlreadyLoadedFailure extends AdsLoadingFailure {
  AdAlreadyLoadedFailure({required super.message, required super.debugMessage});
}

abstract class PersistenceFailure extends Failure {
  PersistenceFailure({required super.message, required super.debugMessage});
}

class NoDataFoundFailure extends PersistenceFailure {
  NoDataFoundFailure({required super.message, required super.debugMessage});
}

class ObjectMappingFailure extends PersistenceFailure {
  ObjectMappingFailure({required super.message, required super.debugMessage});
}


abstract class TimerFailure extends Failure {
  TimerFailure({required super.message, required super.debugMessage});
}

class TimerAlreadyStartedFailure extends TimerFailure {
  TimerAlreadyStartedFailure({required super.message, required super.debugMessage});
}