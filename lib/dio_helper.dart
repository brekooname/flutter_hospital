import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;
  static init() {
    dio = Dio(BaseOptions(baseUrl: ""));
  }

  static Future<Response?> getData(
      {required String path, Map<String, dynamic>? queryParameters}) async {
    return await dio?.get(path, queryParameters: queryParameters);
  }

  static Future<Response?> postData(
      {required String path,
      required Map<String, dynamic> data,
      Map<String, dynamic>? queryParameters}) async {
    return await dio?.post(path, queryParameters: queryParameters, data: data);
  }
}
