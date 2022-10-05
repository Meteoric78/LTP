import 'package:aula3/leituras.dart' as leitura;
import 'package:projetinho3/leituras.dart' as leitura;

List<int> preencherLista({required int tamanho}) {
  List<int> lista = [];
  int cont = 0;
  while (cont < tamanho) {
    int value = leitura.lerInteiro(
        mensagem:
            "Informe um valor para da matriz unidimensional  para a ${cont + 1} meira posição ");
    lista.add(value);
    cont++;
  }

  return lista;
}

List<int> produtoPorEscalar({required List<int> matrizA, int escalar = 3}) {
  List<int> matrizB = [];
  matrizA.forEach((e) {
    matrizB.add(e * escalar);
  });
  return matrizB;
}

int somarElementos({required List<int> fonte, int inicio = 0, int fim = 0}) {
  if (fim == 0) fim = fonte.length;  
  var range = fonte.getRange(inicio, fim);
  int valor = 0;
  range.forEach((e) {
    valor += e;
  });
  return valor;
}

double mediaArit({required List<int> matriz}) {
  double media = somarElementos(fonte: matriz) / matriz.length.toDouble();
  return media;
}

int menor({required List<int> matriz}) {
  matriz.sort();
  return matriz.first;
}

int maior({required List<int> matriz}) {
  matriz.sort();
  return matriz.last;
}

List<int> repeticoes({required List<num> matriz, required int a, required int b, required int c}) {
  int a_rep = 0;
  int b_rep = 0;
  int c_rep = 0;
  List<int> repetidos = [a_rep, b_rep, c_rep];
  matriz.forEach((e) {
    if (a == e) a_rep++;
    if (b == e) b_rep++;
    if (c == e) c_rep++;
  });
  return repetidos;
}
