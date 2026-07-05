import 'package:clean_architecture_practice/features/users/data/data_source/user_remote_data_source.dart';
import 'package:clean_architecture_practice/features/users/data/models/user_model.dart';

class UserRepository {

  final UserRemoteDataSource userRemoteDataSource;

  UserRepository(this.userRemoteDataSource);


  Future<List<UserModel>> getUser() async {
    return userRemoteDataSource.getUser();
  }
}