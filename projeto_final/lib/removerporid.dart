
import 'dart:io';

import 'package:projeto_final/empresa.dart';

void removerporid(List<Empresa> r) {
  stdout.write("Informe o ID para remover uma empresa");
  String remove = stdin.readLineSync()!;

  bool auxiliar = false;
  for (var i = 0; i < r.length; i++) {
    if (remove == r[i].id) {
      r.remove(r[i]);
      auxiliar = true;
      i = r.length;
    }
    if (!auxiliar) {
      print("Não encontrado!");
    }
  }
}