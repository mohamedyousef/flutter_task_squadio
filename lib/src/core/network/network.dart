import 'package:ibtikar_task/src/core/config/config.dart';
import 'package:ibtikar_task/src/core/network/interceptors/query_access_key_interceptor.dart';
import 'package:network/network.dart';
import 'package:riverpod/riverpod.dart';

enum Enviroment { dev, staging, prod }

final baseUrlProvider = Provider((ref) {
  switch (enviroment) {
    case Enviroment.dev:
      return baseUrlDev;
    case Enviroment.staging:
      return baseUrlStaging;
    case Enviroment.prod:
      return baseUrlProd;
  }
});

final networkServiceProvider = Provider(
  (ref) => NetworkService(
    baseUrlBuilder: () async => ref.watch(baseUrlProvider),
  )..addInterceptor(QueryAccessKeyInterceptor()),
);
