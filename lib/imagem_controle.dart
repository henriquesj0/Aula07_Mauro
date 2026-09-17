import 'imagem_modelo.dart';

class ImagemControle {
  final List<ImagemModelo> imagens = [
    ImagemModelo(
        url:
            'https://upload.wikimedia.org/wikipedia/pt/0/0d/Centro_Holoteca_Niemeyer_decima.jpg?utm_source=pt.wikipedia.org&utm_campaign=index&utm_content=original'),
    ImagemModelo(
        url:
            'https://upload.wikimedia.org/wikipedia/pt/b/bf/DesenhoDavidSeverance.png?utm_source=pt.wikipedia.org&utm_campaign=index&utm_content=original'),
    ImagemModelo(
        url:
            'https://upload.wikimedia.org/wikipedia/pt/8/83/DesenhoDoCasoKennethArnold.png?utm_source=pt.wikipedia.org&utm_campaign=index&utm_content=original'),
    ImagemModelo(
        url:
            'https://upload.wikimedia.org/wikipedia/pt/f/f6/Centro_Holoteca_Niemeyer_lado.jpg?utm_source=pt.wikipedia.org&utm_campaign=index&utm_content=original'),
    ImagemModelo(
        url:
            'https://upload.wikimedia.org/wikipedia/pt/9/96/LuzesMichigan1994.png?utm_source=pt.wikipedia.org&utm_campaign=index&utm_content=original'),
  ];

  int atual = 0;

  ImagemModelo get imagemAtual => imagens[atual];

  void proximaImagem() {
    if (atual < imagens.length - 1) {
      atual++;
    } else {
      atual = 0;
    }
  }
}
