import 'package:logger/logger.dart';

class Log {
  static Logger logger = Logger();

  static info({required String message}) {
    logger.i(message);
  }

  static error({required String message}) {
    logger.e(message);
  }

  static debug({required String message}) {
    logger.d(message);
  }

  static wtf({required String message}) {
    logger.wtf(message);
  }
}