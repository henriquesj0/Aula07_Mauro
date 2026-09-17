import 'tabuada_modelo.dart';

class TabuadaControle {
  final TabuadaModelo tabuada = TabuadaModelo(
    numero1: 7,
    numero2: 8,
  );

  bool verificaResposta(String resposta) {
    if (resposta.isEmpty) {
      return false;
    }

    return int.tryParse(resposta) == tabuada.resultado;
  }
}
