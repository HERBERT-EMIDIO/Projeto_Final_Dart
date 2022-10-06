import 'dart:io';


class Functions {
  static String input(String msg) {
    while (true) {
      String userInput;
      stdout.write(msg);
      userInput = stdin.readLineSync()!;

      if (int.tryParse(userInput) != null) {
        print("Informação incorreta");
        continue;
      } else {
        return userInput;
      }
    }
  }

  static String inputParaInteiro(String msg) {
    while (true) {
      String inputInteiro;
      stdout.write(msg);
      inputInteiro = stdin.readLineSync()!;
      if (int.tryParse(inputInteiro) != null) {
        return inputInteiro;
      } else {
        print("Informe o valor em números");
        continue;
      }
    }
  }

  static String inputparanum(String msg) => input(msg).toString();

  static String inputvalcnPJ(String msg) {
    while (true) {
      String userInput;
      stdout.write(msg);
      userInput = stdin.readLineSync()!;
      if (int.tryParse(userInput) == null || userInput.length != 14) {
        print("INFORME UM CNPJ VÁLIDO!");
        continue;
      } else {
        return userInput;
      }
    }
  }

  static String inputvalcpftel(String msg) {
    while (true) {
      String userInput;
      stdout.write(msg);
      userInput = stdin.readLineSync()!;
      if (int.tryParse(userInput) == null || userInput.length != 11) {
        print(" INFORMAÇÃO INVÁLIDA!");
        continue;
      } else {
        return userInput;
      }
    }
  }

  static String inputvalcep(String msg) {
    while (true) {
      String userInput;
      stdout.write(msg);
      userInput = stdin.readLineSync()!;
      if (int.tryParse(userInput) == null || userInput.length != 8) {
        print("INFORME UM CEP VÁLIDO!");
        continue;
      } else {
        return userInput;
      }
    }
  }
}