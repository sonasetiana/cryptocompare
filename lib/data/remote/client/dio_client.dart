import 'dart:convert';

import 'package:CryptoCompare/data/remote/client/api_error.dart';
import 'package:CryptoCompare/data/remote/client/configs.dart';
import 'package:dio/dio.dart';

class DioClient {

  late Dio _dio;

  DioClient() {
    final options = BaseOptions(
        baseUrl: Configs.BASE_URL,
        connectTimeout: 5000,
        receiveTimeout: 3000,
        headers: {
          "api_key": Configs.API_KEY
        }
    );
    _dio = Dio(options);
    _dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
  }

  Future<dynamic> get({
    required String endPoint,
    Map<String, dynamic>? query
  }) async {
    try {
      Response response = await _dio.get(endPoint, queryParameters: query);
      return response.data;
    } catch(e) {
      return ApiError.fromError(e);
    }
  }

  Future<dynamic> post({
    required String endPoint,
    Map? body,
    Map<String, dynamic>? query,
  }) async {
    try {
      Response response = await _dio.post(endPoint, data: body ?? {}, queryParameters: query);
      return response.data;
    } catch (e) {
      return Future.error(ApiError.fromError(e));
    }
  }

  Future<dynamic> patch({
    required String endPoint,
    Map? body,
    Map<String, dynamic>? query,
  }) async {
    try {
      Response response = await _dio.patch(endPoint, data: body ?? {}, queryParameters: query);
      return response.data;
    } catch (e) {
      return Future.error(ApiError.fromError(e));
    }
  }

  Future<Response<dynamic>> delete({
    required String endPoint,
    Map? body,
    Map<String, dynamic>? query,
  }) async {
    try {
      Response response = await _dio.delete(endPoint, data: body ?? {}, queryParameters: query);
      return response.data;
    } catch (e) {
      return Future.error(ApiError.fromError(e));
    }
  }


}