
import 'dart:io';
import 'package:projeto_final/endereco.dart';
import 'package:projeto_final/socio.dart';

class Empresa {
  final String id = Uuid().v4();
  String razaoSocial;
  String nomeFantasia;
  String cnPj;
  Endereco endereco;
  String telefone;
  final horario = DateTime.now();
  Socio socio;

  Empresa(
      {required this.razaoSocial,
      required this.nomeFantasia,
      required this.cnPj,
      required this.endereco,
      required this.telefone,
      required this.socio});

  String tel() {
    String ddd = telefone.substring(0, 2);
    String dig = telefone.substring(2, 3);
    String p4 = telefone.substring(3, 7);
    String u4 = telefone.substring(7);
    return " ($ddd) $dig $p4-$u4";
  }

  String cnpj() {
    return ("${cnPj.substring(0, 2)}.${cnPj.substring(2, 5)}.${cnPj.substring(5, 8)}/${cnPj.substring(8, 12)}-${cnPj.substring(12, 14)}");
  }

  @override
  String toString() {
    return "ID: $id\nCNPJ: ${cnpj()} Data Cadastro: $horario\nRazão Social: $razaoSocial\nNome Fantasia: $nomeFantasia\nTelefone: ${tel()}\nEndereço: ${endereco.toString()}\nSocio:\n${socio.toString()}\n";
  }
}