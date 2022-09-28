import 'dart:io';

int lerInteiro({required String mensagem}) {
  print(mensagem);
  String? ler = stdin.readLineSync();

  if (ler != null) {
    int? value = int.tryParse(ler);

    while (value == null) {
      print(mensagem);
      String? novamente = stdin.readLineSync();

      if (novamente != null) value = int.tryParse(novamente);
    }

    return value;
  }

  return 0;
}


//Desafio para hoje a noite, analisar esta função, e resolver a mesma com do while. 
