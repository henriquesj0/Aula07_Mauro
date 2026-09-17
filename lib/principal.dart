import 'package:flutter/material.dart';
import 'imagem_controle.dart';

class Principal extends StatefulWidget {
  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  final controle = ImagemControle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeria Wikipedia'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              controle.imagemAtual.url,
              width: 200,
              height: 200,
              headers: const {'User-Agent': 'MinhaAppFlutter/1.0'},
              errorBuilder: (context, error, stackTrace) {
                return const SizedBox(
                  width: 200,
                  height: 200,
                  child: Center(
                    child:
                        Text('Erro ao carregar', textAlign: TextAlign.center),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(
                controle.imagemAtual.like
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: controle.imagemAtual.like ? Colors.red : null,
              ),
              onPressed: () {
                setState(() {
                  controle.imagemAtual.like = !controle.imagemAtual.like;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  controle.proximaImagem();
                });
              },
              child: const Text('Próxima Imagem'),
            ),
          ],
        ),
      ),
    );
  }
}
