import 'package:aula3/leituras.dart' as leitura;

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

void imprimirProceduralInteiro({required List<int> lista}) {
  for (int i = 0; i < lista.length; i++) {
    print("O vetor na posicao [ $i ] = ${lista[i]}");
  }
}
