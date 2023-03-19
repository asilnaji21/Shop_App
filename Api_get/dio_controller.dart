import 'dart:convert';
import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

import 'package:shop_app/Api/api_end_points.dart';
import 'package:shop_app/Api_get/api_controller.dart';
import 'package:shop_app/Api_get/app_interceptor.dart';
import 'package:shop_app/Api_get/stauts_code.dart';

import 'exceptions.dart';

class DioControlleing implements ApiControlling {
  final Dio client;

  DioControlleing({required this.client}) {
    (client.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };

    client.options
      ..baseUrl = ApiEndPoints.baseUrl
      ..responseType = ResponseType.plain
      ..followRedirects = false
      ..validateStatus = (status) {
        return status! < StatusCode.internalServerError;
      };
    client.interceptors.add(AppInterceptor());

  } //فيه ايرور هاند شيكننغ ايرور او باد سيرتفيكت ايرورو
  @override
  Future Post(String url,
      {Map<String, dynamic>? body,
      bool formDataIsEnabled = false,
      Map<String, dynamic>? queryParametrse}) async {
    try {
      final response = await client.post(url,
          queryParameters: queryParametrse,
          data: formDataIsEnabled ? FormData.fromMap(body!) : body);

      return jsonDecode(response.data.toString());
    } on DioError catch (error) {
      _handleDioError(error);
    }
    ;
  }

  @override
  Future Put(String url,
      {Map<String, dynamic>? body,
      Map<String, dynamic>? queryParametrse}) async {
    try {
      final response =
          await client.put(url, queryParameters: queryParametrse, data: body);

      return jsonDecode(response.data.toString());
    } on DioError catch (error) {
      _handleDioError(error);
    }
    ;
  }

  @override
  Future get(String url, {Map<String, dynamic>? queryParametrse}) async {
    try {
      final response = await client.get(url, queryParameters: queryParametrse);

      return jsonDecode(response.data.toString());
    } on DioError catch (error) {
      _handleDioError(error);
    }
    ;
  }

  dynamic _handleDioError(DioError error) {
    switch (error.type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        throw const FetchDataException();
      case DioErrorType.response:
        switch (error.response?.statusCode) {
          case StatusCode.badRequest:
            throw const BadRequestException();
          case StatusCode.unauthorized:
          case StatusCode.forbidden:
            throw const UnauthorizedException();
          case StatusCode.notFound:
            throw const NotFoundException();
          case StatusCode.confilct:
            throw const ConflictException();

          case StatusCode.internalServerError:
            throw const InternalServerErrorException();
        }
        break;
      case DioErrorType.cancel:
        break;
      case DioErrorType.other:
        throw const NoInternetConnectionException();
    }
  }
}
