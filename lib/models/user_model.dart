class UserModel {
  final String name;
  final String lastName;
  final DateTime dateAge;

  UserModel(this.name, this.lastName, this.dateAge);
}

class UserException {
  final String erro;

  UserException(this.erro);
}
