import 'package:dio/dio.dart';

class ApiServer {
  final Dio dio = Dio();
  final String _urlServer = "https://pokeapi.co/api/v2/";

  Future<Response> get<T>(
    String url, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    final Map<String, dynamic> headers = {
      "Content-Type": "application/json",
    };
    final result = await dio.get(
      _urlServer + url,
      data: data,
      options: Options(
        followRedirects: false,
        validateStatus: (status) => true,
        headers: headers,
      ),
      queryParameters: queryParameters,
    );
    return result;
  }
}
