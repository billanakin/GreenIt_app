class LoginForm {
  String? email;
  String? password;

  LoginForm({this.email, this.password});

  Map toJson() => <String, dynamic>{
        "email": email,
        "password": password,
      };
}
