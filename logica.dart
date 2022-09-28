import 'dart:io';

import 'package:aula3/leituras.dart' as leitura;
import 'package:aula3/lista_vetor.dart' as lvet;

int menu() {
  print(
      "Digite  1 para ler dez elemetnos de um matriz unidimensional do tipo inteiro e apresentar os valores lidos");
  print("Digite 0 para Sair");

  String? ler = stdin.readLineSync();
  if (ler != null) {
    int? value = int.tryParse(ler);
    if (value != null) {
      return value;
    } else
      return -1;
  } else
    return -1;
}

void inicio() {
  int? op;
  do {
    op = menu();
    switch (op) {
      case 0:
        {
          print("Obrigado por utilizar nosso aplicativo em terminal");
        }
        break;
      case 1:
        {
          void imprimir(int v) {
            if (v % 2 == 0) print(" O Elemento é $v   ");
          }

          ;

          List<int> unidimensional = lvet.preencherLista(tamanho: 10);
          //lvet.imprimirProceduralInteiro(lista: unidimensional);
          //unidimensional.forEach(imprimir);
          unidimensional.forEach((int e) {
            if (e % 2 != 0) print("Elemento  é $e");
          });
        }
        break;
      default:
        print("Opção inválida");
    }
  } while (op != 0);
}
