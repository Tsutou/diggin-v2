import 'dart:io';

import 'package:alice/alice.dart';
import 'package:diggin_v2/data/model/api_request_type.dart';
import 'package:diggin_v2/data/model/app_error.dart';
import 'package:diggin_v2/data/model/result.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as getx;

abstract class ApiClient with DioMixin implements Dio {

  abstract String baseUrl;

  ApiClient() {
    options = BaseOptions(
      baseUrl: baseUrl,
      contentType: 'application/json',
      connectTimeout: 30000,
      sendTimeout: 30000,
      receiveTimeout: 30000,
    );
  }

  Future<Result<T>> sendRequest<T>({
    required ApiRequestType type,
    required String path,
    required T Function(Map<String, dynamic>) decoder,
    Map<String, dynamic>? query,
    dynamic body,
    Options? options,
    String? contentType,
  }) async {
    Options _options = options ?? Options(method: type.methodString());
    _options.method = type.methodString();
    _options.contentType = contentType;

    httpClientAdapter = DefaultHttpClientAdapter();

    // add alice
    interceptors.add(getx.Get.find<Alice>().getDioInterceptor());

    return _send(
      request: request(
        path,
        data: body,
        queryParameters: query,
        options: _options,
      ),
      decoder: decoder,
    );
  }

  Future<Result<T>> _send<T>({
    required Future<Response<Map<String, dynamic>>> request,
    required T Function(Map<String, dynamic>) decoder,
  }) async {
    try {
      return await request.then(
        (value) => Result.success(
          data: decoder(value.data!),
        ),
      );
    } on DioError catch (error) {
      debugPrint(error.toString());

      return Result.failure(error: AppError(error));
    } catch (error) {
      debugPrint(error.toString());
      return Result.failure(error: AppError(Exception()));
    }
  }
}
