class SenhaLogin {
  final String email;
  final String senha;

  SenhaLogin(
    this.email,
    this.senha,
  );

  @override
  String toString() {
    return 'SenhaLogin{email: $email, senha:$senha }';
  }
}
