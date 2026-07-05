import 'package:dio/dio.dart';

class ApiClient {

  final Dio dio;

  ApiClient() : dio = Dio(
    BaseOptions(
      baseUrl: "https://jsonplaceholder.typicode.com",
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),


    ),
  );

  
}