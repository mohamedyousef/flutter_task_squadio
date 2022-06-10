import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:ibtikar_task/src/core/config/config.dart';
import 'package:ibtikar_task/src/core/network/interceptors/query_access_key_interceptor.dart';
import 'package:network/network.dart';
import 'package:path_provider/path_provider.dart' as pp;
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
  (ref) {
    // Global options

    final options = CacheOptions(
      store: HiveCacheStore(AppPathProvider.path),
      policy: CachePolicy.refreshForceCache,
      hitCacheOnErrorExcept: [],
      maxStale: const Duration(
        days: 7,
      ),
      //increase number of days for loger cache
      priority: CachePriority.high,
    );

    return NetworkService(
      baseUrlBuilder: () async => ref.watch(baseUrlProvider),
    )
      ..addInterceptor(QueryAccessKeyInterceptor())
      ..addInterceptor(DioCacheInterceptor(options: options));
  },
);

class AppPathProvider {
  AppPathProvider._();

  static String? _path;

  static String get path {
    if (_path != null) {
      return _path!;
    } else {
      throw Exception('path not initialized');
    }
  }

  static Future<void> initPath() async {
    final dir = await pp.getApplicationDocumentsDirectory();
    _path = dir.path;
  }
}
