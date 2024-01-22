class SignupForm {
  String? email;
  String? password;
  String? passwordConfirmation;
  String? firstName;
  String? lastName;

  SignupForm({
    this.email,
    this.password,
    this.passwordConfirmation,
    this.firstName,
    this.lastName,
  });

  Map toJson() => <String, dynamic>{
        "email": email,
        "password": password,
        "password_confirmation": passwordConfirmation,
        "first_name": firstName,
        "last_name": lastName,
      };
}
