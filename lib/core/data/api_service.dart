import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com/', // Example API
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
    ),
  );

  Future<List<dynamic>> fetchPosts() async {
    try {
      Response response = await _dio.get('posts');
      return response.data;
    } on DioException catch (e) {
      throw Exception('Failed to load posts: ${e.message}');
    }
  }
}
