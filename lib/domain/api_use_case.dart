import 'package:devbase/data/repository/api_repository.dart';

class LoginUseCase {
  final ApiRepository repository;

  const LoginUseCase(this.repository);

  void getUser(String str) {
    repository.getUserFromApi();
  }

  void getUserId(int id) {
    String str = id.toString();
    repository.getUserFromApi();
  }
}
