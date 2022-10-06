import 'dart:io';

import 'empresa.dart';


void procurarCnpjemp(List<Empresa> p) {
  stdout.write("Informe o CNPJ da empresa: ");
  String tmpcnPj = stdin.readLineSync()!;

  bool aux = false;

  for (var i = 0; i < p.length; i++) {
    if (tmpcnPj == p[i].cnPj) {
      print(p[i]);
      aux = true;
      i = p.length;
    }
  }
  if (!aux) {
    print("CNPJ não encontrado");
  }
}

void procurarDocsocio(List<Empresa> p) {
  stdout.write("Informe o documento do sócio: ");
  String tmpcnPj = stdin.readLineSync()!;

  bool aux = false;

  for (var i = 0; i < p.length; i++) {
    if (tmpcnPj == p[i].socio.documento) {
      print(p[i]);
      aux = true;
      i = p.length;
    }
  }
  if (!aux) {
    print("CNPJ não encontrado");
  }
}