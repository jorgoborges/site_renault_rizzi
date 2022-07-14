class Cadastropessoa {
  final String primeironome;
  final String segundonome;
  final String cpf;
  final String emailcomercialdepartamento;

  Cadastropessoa(
    this.primeironome,
    this.segundonome,
    this.cpf,
    this.emailcomercialdepartamento,
  );

  @override
  String toString() {
    return 'Cadastropessoa{primeironome:$primeironome,segundonome:$segundonome,cpf:$cpf,emailcomercialdepartamento:$emailcomercialdepartamento}';
  }
}
