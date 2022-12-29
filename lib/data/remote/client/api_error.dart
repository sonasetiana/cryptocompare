import 'dart:io';

import 'package:CryptoCompare/data/remote/client/configs.dart';
import 'package:dio/dio.dart';

class ApiError implements Exception {
  ApiError({this.message, this.messageObject, this.statusCode, this.extra});

  String? message;
  dynamic messageObject;
  int? statusCode;
  dynamic extra;

  factory ApiError.fromError(Object? error) {
    var message = Configs.generalApiError;
    dynamic messageObject;
    final dioError = tryCast<DioError>(error);
    if (dioError?.error is SocketException) {
      return ApiError(message: 'No internet connection', statusCode: 0);
    }

    final data = dioError?.response?.data;
    if (data != null) {
      final obj = data?['message'];
      if (obj is String) {
        message = obj;
      } else {
        messageObject = obj;
      }
    }
    return ApiError(
      message: message,
      messageObject: messageObject,
      statusCode: dioError?.response?.statusCode,
    );
  }

  @override
  String toString() {
    return message ?? Configs.generalApiError;
  }
}

T? tryCast<T>(dynamic value) {
  try {
    return (value as T);
  } on TypeError catch (_) {
    return null;
  }
}