class Endereco {
  String logradouro;
  String numero;
  String complemento;
  String bairro;
  String estado;
  String cep;

  Endereco(this.logradouro, this.numero, this.complemento, this.bairro,
      this.estado, this.cep);

  String ceep() {
    return ("${cep.substring(0, 6)}-${cep.substring(5, 8)}");
  }

  @override
  String toString() {
    return "$logradouro, $numero, $complemento, $bairro/$estado, ${ceep()}";
  }
}