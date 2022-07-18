// import 'dart:async';

// import 'package:chopper/chopper.dart';
// import 'package:template_app/src/core/domain/entity/data_error.dart';

// class DataErrorConverter implements ErrorConverter {
//   const DataErrorConverter();

//   @override
//   FutureOr<Response> convertError<BodyType, InnerType>(Response response) {
//     switch (response.statusCode) {
//       case 400:
//         throw const DataError.networkBadRequest();
//       case 401:
//         throw const DataError.networkUnathorized();
//       case 404:
//         throw const DataError.networkNotFound();
//       default:
//         throw DataError.custom(response.error, null);
//     }
//   }
// }
