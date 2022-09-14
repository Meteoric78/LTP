import 'dart:io';

int menu() {
  print("Digite 1 para o primeiro exercício");
  print("Digite 0 para sair");
  String? aux = stdin.readLineSync();
  if (aux != null) {
    int? num = int.tryParse(aux);
    return (num == null) ? -1 : num;
  } else {
    return -1;
  }
}

void inicio() {
  int op;
  do {
    op = menu();
    switch (op) {
      case 0:
        {
          print("Obrigado por usar");
        }
        break;
      case 1:
        {
          int i = 0;
          while {
            print("Insira 10 valores:");
            String? input1 = stdin.readLineSync();
            if (input1 != null) {
              int? n
            }
          }
          
        }
        break;
      default:
        {
          print("Opção inválida");
        }
    }
  } while (op != 0);
}
