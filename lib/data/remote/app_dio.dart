import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/app_dio.g.dart';

@riverpod
Dio appDio(AppDioRef ref) => AppDio._(ref);

class AppDio with DioMixin implements Dio {
  static Dio getInstance(reader) => AppDio._(reader);

  final timeOut = const Duration(minutes: 2);

  AppDio._(Ref reader, [BaseOptions? options]) {
    options = BaseOptions(
      //baseUrl: Secret.baseUrl,
      contentType: 'application/json',
      connectTimeout: timeOut,
      sendTimeout: timeOut,
      receiveTimeout: timeOut,
    );

    this.options = options;
    if (kDebugMode) {
      // Check mock data
      // if (AppConfig.isMockData) {
      //   interceptors.add(MockInterceptor());
      // }
      // Local Log
      interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
        ),
      );
    }

    httpClientAdapter = HttpClientAdapter();
  }
}
