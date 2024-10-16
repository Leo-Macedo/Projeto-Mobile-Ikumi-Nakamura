import 'package:flutter/material.dart';

class JogoPage extends StatefulWidget {
  @override
  State<JogoPage> createState() {
    return JogoPageState();
  }
}

class JogoPageState extends State<JogoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          child: Text(
            'Jogos',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      body: Stack(children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/img/ikumi.jpg', fit: BoxFit.cover)),
        Container(color: Color.fromARGB(255, 188, 95, 235).withOpacity(1)),
        Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            shrinkWrap: true,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Jogo(),
                  Jogo(),
                  Jogo(),
                  Jogo(),
                  Jogo(),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class Jogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(height: 50),
                  Text(
                    'Sapinhos Sapecas',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  Container(height: 20),
                  Center(
                    child: Container(
                      height: 200,
                      width: 800,
                      child: Image.asset('assets/img/sapecas.jpeg'),
                    ),
                  ),
                  Container(height: 20),
                  Text(
                    'Sapinhos Sapecas é um jogo muito legal e maneiro que você deve salvar o seu tio sequestrado, controle os 3 sapinhos irmão: Ronaldinho, Rivaldinho e Romarinho para encontrá-lo e salvar ele dessa.\n',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)
                        ),
                        textAlign: TextAlign.justify,
                  ),
                ],
              );
  }
}
