

import 'package:projeto_final/endereco.dart';
import 'package:projeto_final/socio.dart';

class Fisico extends Socio {
  Fisico(String nome, String documento, Endereco enderecoSocio)
      : super(nome, documento, enderecoSocio);

  String cpf() {
    return "${documento.substring(0, 3)}.${documento.substring(3, 6)}.${documento.substring(6, 9)}-${documento.substring(9, 11)}";
  }

  @override
  String toString() {
    return "Nome completo: $nome\nCPF: ${cpf()}\nEndereço: ${enderecoSocio.toString()}";
  }

  void validarCpf(outro) {
    RegExp validacpf = RegExp("[0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{2}");
    print(validacpf.hasMatch(outro));
  }
}