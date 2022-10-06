import 'dart:io';

import 'package:projeto_final/socio.dart';

import 'empresa.dart';
import 'endereco.dart';
import 'fisico.dart';
import 'input.dart';
import 'juridico.dart';


Endereco readEndereco() {
  String logradouro = Functions.input("Logradouro: ");
  String numero = Functions.inputParaInteiro("Número: ");
  String complemento = Functions.input("Complemento: ");
  String bairro = Functions.input("Bairro: ");
  String estado = Functions.input("Estado: ");
  String cep = Functions.inputvalcep("CEP: ");

  Endereco temp =
      Endereco(logradouro, numero, complemento, bairro, estado, cep);

  return temp;
}

Socio readSocio() {
  Socio p;
  int socioption;
  do {
    print("Informe o tipo do sócio: ");
    print("1... Pessoa Física.");
    print("2... Pessoa Jurídica.");
    socioption = int.parse(stdin.readLineSync()!);
    if (socioption != 1 && socioption != 2) {
      print("Opção inválida");
    }
  } while (socioption != 1 && socioption != 2);
  if (socioption == 1) {
    p = readFisico();
  } else {
    p = readJuridico();
  }
  return p;
}

Fisico readFisico() {
  print("Sócio: Físico");
  String nome = Functions.input("Nome: ");
  String documento = Functions.inputvalcpftel("CPF: ");
  Endereco e = readEndereco();
  Fisico temp2 = Fisico(nome, documento, e);

  return temp2;
}

Juridico readJuridico() {
  print("Sócio: jurídico");
  String razaoSocial = Functions.input("Razao Social: ");
  String nome = Functions.input("Nome Fantasia: ");
  String documento = Functions.inputvalcnPJ("CNPJ: ");
  Endereco e = readEndereco();
  Juridico temp3 = Juridico(razaoSocial, nome, documento, e);

  return temp3;
}

List<Empresa> readEmpresa(List<Empresa> l) {
  List<Empresa> auxiliar = l;
  String razaoSocial = Functions.input("Razao Social: ");
  String nomeFantasia = Functions.input("Nome Fantasia: ");
  String cnPj = Functions.inputvalcnPJ("CNPJ: ");
  String telefone = Functions.inputvalcpftel("Telefone: ");
  Endereco e = readEndereco();
  Socio s = readSocio();
  Empresa temp4 = Empresa(
      razaoSocial: razaoSocial,
      nomeFantasia: nomeFantasia,
      cnPj: cnPj,
      endereco: e,
      telefone: telefone,
      socio: s);
  auxiliar.add(temp4);
  return auxiliar;
}