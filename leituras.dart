import 'dart:io';

int lerInteiro({required String mensagem}) {
  String? input;
  int? valor;
  do {
    print(mensagem);
    input = stdin.readLineSync();
    if (input != null) {
      valor = int.tryParse(input);
    }
  } while (input == null || valor == null);
  return valor;
}


//Desafio para hoje a noite, analisar esta função, e resolver a mesma com do while. 

num lerNum({required String mensagem}) {
  String? input;
  num? valor;
  do {
    print(mensagem);
    input = stdin.readLineSync();
    if (input != null) {
      valor = num.tryParse(input);
    }
  } while (input == null || valor == null);
  return valor;
}
