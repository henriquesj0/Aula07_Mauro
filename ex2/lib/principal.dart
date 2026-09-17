import 'package:flutter/material.dart';
import 'tabuada_controle.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  final controle = TabuadaControle();
  final controlaTexto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool correto = controle.verificaResposta(controlaTexto.text);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabuada'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${controle.tabuada.numero1} x ${controle.tabuada.numero2} = ?',
                style: const TextStyle(
                  fontSize: 28,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controlaTexto,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Digite a resposta',
                ),
              ),
              const SizedBox(height: 20),
              Icon(
                correto ? Icons.check : Icons.close,
                size: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
