import 'package:clean_architecture_practice/core/network/api_client.dart';
import 'package:clean_architecture_practice/features/users/data/models/user_model.dart';

class UserRemoteDataSource {
  final ApiClient apiClient;

  UserRemoteDataSource(this.apiClient);

  Future<List<UserModel>> getUser() async {
    final response = await apiClient.dio.get('/users');

    final data = response.data as List;

    return data.map((e) => UserModel.fromJson(e)).toList();
  }
}
