import 'package:flutter/material.dart';

import 'classes.dart';


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
          child: Image.asset('assets/img/ikumi5.jpg', fit: BoxFit.cover),
        ),
        Container(
          color: Colors.black.withOpacity(0.01),
        ),
        Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(height: 200),
              Image.asset(
                  'assets/img/textikuna.png',
                  width: 500,
                  height: 100,
                ),
              Container(height: 50),
              Expanded(
                // Envolve o ListView em um Expanded
                child: ListView.builder(
                  itemCount: botoes.length,
                  itemBuilder: (context, index) {
                    return Botao(link: botoes[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class Botao extends StatelessWidget {
  final Link link;

  Botao({required this.link});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200, // Defina a largura desejada
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(400, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {
              link.navegar(context);
            },
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Centraliza o conteúdo
              children: [
                Image.asset(
                  link.img,
                  width: 35,
                  height: 35,
                ),
                SizedBox(width: 10), // Espaçamento entre o ícone e o texto
                Text(
                  link.titulo,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 241, 203, 252),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(height: 20),
      ],
    );
  }
}

List<Link> botoes = [
  Link(
    titulo: 'História',
    img: 'assets/img/historia.png', // Caminho da imagem para História
    url: '/historia',
    tipo: false,
  ),
  Link(
    titulo: 'Jogos',
    img: 'assets/img/jogos.png', // Caminho da imagem para Jogos
    url: '/jogo',
    tipo: false,
  ),
  Link(
    titulo: 'Empresas',
    img: 'assets/img/empresas.png', // Caminho da imagem para Empresas
    url: '/empresa',
    tipo: false,
  ),
  Link(
    titulo: 'Links',
    img: 'assets/img/links.png', // Caminho da imagem para Links
    url: '/links',
    tipo: false,
  ),
];
