import 'package:dio/dio.dart';
import 'package:ibtikar_task/src/core/config/config.dart';

class QueryAccessKeyInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters['api_key'] = apiKey;
    super.onRequest(options, handler);
  }
}
