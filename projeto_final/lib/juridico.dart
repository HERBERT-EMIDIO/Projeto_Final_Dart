

import 'package:projeto_final/endereco.dart';
import 'package:projeto_final/socio.dart';

class Juridico extends Socio {
  String razaoSocial;

  Juridico(
      this.razaoSocial, String nome, String documento, Endereco enderecoSocio)
      : super(nome, documento, enderecoSocio);

  String cnpj() {
    return ("${documento.substring(0, 2)}.${documento.substring(2, 5)}.${documento.substring(5, 8)}/${documento.substring(8, 12)}-${documento.substring(12, 14)}");
  }

  @override
  String toString() {
    return "Razão Social: $razaoSocial\nNome Fantasia: $nome\nCNPJ: ${cnpj()}\nEndereço: ${enderecoSocio.toString()}";
  }

  void validarCnpj(outro) {
    RegExp validacnpj = RegExp("[0-9]{2}.[0-9]{3}.[0-9]{3}/[0-9]{4}-[0-9]{2}");
    print(validacnpj.hasMatch(outro));
  }
}