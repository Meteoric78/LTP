import 'dart:io';

import 'package:aula4/leituras.dart' as leitura;
import 'package:aula4/lista_vetor.dart' as lvet;

int menu() {
  print(
      "Digite 1 para ler dez elemetnos de um matriz unidimensional do tipo inteiro e apresentar os valores lidos");
  print("Digite 2 para ler 8 inteiros e multiplicá-los por 3");
  print("Digite 3 para ler 10 inteiros e exibir apenas os números pares");
  print(
      "Digite 4 para ler 15 inteiros e exibir os que forem maior ou igual a 10");
  print("Digite 5 para ler 20 inteiros, e somar seus 10 primeiros elementos");
  print(
      "Digite 6 para ler 30 inteiros, exibir seus números pares, seu menor e maior número, e quantos valores estão acima da média dos itens da lista");
  print(
      "Digite 7 para ler uma lista 10 números, e 1 número em A, B, e C cada. O programa irá indicar quantas vezes o valor de cada variável aparece na lista");
  print("Digite 8");
  print("Digite 9 para ler 20 inteiros, o programa irá dividí-los no meio, e fazer a união dos dois, sem repetições");
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
      case 2:
        {
          List<int> lista2 = lvet.preencherLista(tamanho: 8);
          print("${lvet.produtoPorEscalar(matrizA: lista2)}");
        }
        break;
      case 3:
        {
          List<int> lista3 = lvet.preencherLista(tamanho: 10);
          print("${lista3.where((e) => e.isEven)}");
        }
        break;
      case 4:
        {
          List<int> lista4 = lvet.preencherLista(tamanho: 15);
          print("${lista4.where((e) => e >= 10)}");
        }
        break;
      case 5:
        {
          List<int> lista5 = lvet.preencherLista(tamanho: 20);
          print(
              "O valor da soma dos 10 primeiros elemntos é ${lvet.somarElementos(fonte: lista5, fim: 10)}");
        }
        break;
      case 6:
        {
          List<int> lista6 = lvet.preencherLista(tamanho: 30);
          print(
              "Os itens pares da lista são: ${lista6.where((e) => e.isEven)}");
          print(
              "O menor elemento é ${lvet.menor(matriz: lista6)}, o maior elemento é ${lvet.maior(matriz: lista6)}");
          print(
              "Os itens que estão acima da média [${lvet.mediaArit(matriz: lista6)}] dos elementos são: ${lista6.where((e) => e > (lvet.mediaArit(matriz: lista6)))}");
        }
        break;
      case 7:
        {
          List<num> lista7 = lvet.preencherLista(tamanho: 10);
          int a = leitura.lerInteiro(mensagem: "Insira um valor inteiro");
          int b = leitura.lerInteiro(mensagem: "Insira um valor inteiro");
          int c = leitura.lerInteiro(mensagem: "Insira um valor inteiro");
          List<int> repetidos =
              lvet.repeticoes(matriz: lista7, a: a, b: b, c: c);
          print("O valor A se repete na lista [${repetidos.first}] vezes");
          print(
              "O valor B se repete na lista [${repetidos.elementAt(1)}] vezes");
          print("O valor C se repete na lista [${repetidos.last}] vezes");
        }
        break;
      case 8:
        {
          List<int> lista8 = lvet.preencherLista(tamanho: 20);
          print("A lista inserida é: $lista8");
        }
        break;
      case 9:
        {
          List<int> lista9 = lvet.preencherLista(tamanho: 20);
          List<int> sec_a = [];
          sec_a.addAll(lista9.sublist(0, 10));
          List<int> sec_b = [];
          sec_b.addAll(lista9.sublist(10));
        }
        break;
      default:
        print("Opção inválida");
    }
  } while (op != 0);
}
