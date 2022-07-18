// import 'package:logger/logger.dart';

// class DefaultLogger extends Logger {
//   DefaultLogger({this.maxMessageLength = 500});
//   final int maxMessageLength;

//   @override
//   void d(
//     dynamic message, [
//     dynamic error,
//     StackTrace? stackTrace,
//   ]) {
//     var text = message.toString();
//     if (text.length > maxMessageLength) {
//       text = text.substring(0, maxMessageLength);
//     }
//     super.d(text, error, stackTrace);
//   }
// }
