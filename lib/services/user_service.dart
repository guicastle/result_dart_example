import 'package:result_dart/result_dart.dart';
import 'package:result_dart_example/models/user_model.dart';
// import 'package:http/http.dart' as http;

class UserService {
  AsyncResult<UserModel, UserException> getUser() async {
    try {
      UserModel user = UserModel("Guilherme", "Muniz", DateTime(1996, 01, 05));

      return Success(user);
    } on Exception catch (e) {
      return Failure(UserException('Erro em carregar valores $e'));
    }
  }
}
