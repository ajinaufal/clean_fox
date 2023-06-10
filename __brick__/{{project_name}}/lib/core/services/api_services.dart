import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
{{ #isGetX }}
import 'package:get/get.dart';
{{ /isGetX }}
{{ #isGetX }}
class ApiService extends GetxController with DioMixin implements Dio {
{{ /isGetX }}
{{^isGetX}}
class ApiService with DioMixin implements Dio {
{{ /isGetX }}
  @override
  HttpClientAdapter get httpClientAdapter => IOHttpClientAdapter();

  @override
  Interceptors get interceptors => Interceptors()
    ..add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      request: true,
      requestHeader: true,
      responseHeader: true,
    ));

  @override
  BaseOptions get options => BaseOptions(
        baseUrl: 'https://dummyjson.com',
        contentType: ContentType.json.mimeType,
        responseType: ResponseType.json,
        receiveDataWhenStatusError: false,
        validateStatus: (status) => status! < 500,
      );
}
