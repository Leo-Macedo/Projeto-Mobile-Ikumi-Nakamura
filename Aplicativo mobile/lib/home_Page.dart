import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/img/ikumi.jpg', fit: BoxFit.cover)),
        Container(
          color: Colors.black.withOpacity(0.5),
        ),
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
                  Container(height: 200),
                  Text(
                    'Ikumi Nakamura',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  Container(height: 50),
                  Botao(
                    texto: 'História',
                    rota: '/historia',
                  ),
                  Container(height: 20),
                  Botao(
                    texto: 'Jogos',
                    rota: '/jogo',
                  ),
                  Container(height: 20),
                  Botao(
                    texto: 'Empresas',
                    rota: '/empresa',
                  ),
                  Container(height: 20),
                  Botao(
                    texto: 'Links',
                    rota: '/jogo',
                  ),
                  Container(height: 20),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class Botao extends StatelessWidget {
  final String texto;
  final String rota;

  Botao({required this.texto, required this.rota});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(200, 60), // Largura e altura do botão
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(rota);
      },
      child: Text(
        texto,
        style:
            TextStyle(fontSize: 20, color: Color.fromARGB(255, 241, 203, 252)),
      ),
    );
  }
}
