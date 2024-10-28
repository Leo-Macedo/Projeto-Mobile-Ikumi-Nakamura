import 'package:flutter/material.dart';

import 'classes.dart';
import 'jogo_Page.dart';

class HistoriaPage extends StatefulWidget {
  @override
  State<HistoriaPage> createState() {
    return HistoriaPageState();
  }
}

class HistoriaPageState extends State<HistoriaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.description, color: Color.fromARGB(255, 241, 203, 252)),
            SizedBox(width: 8),
            Text(
              'História',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 241, 203, 252),
              ),
            ),
          ],
        ),
      ),
      body: Stack(children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/img/ikumi2.jpg', fit: BoxFit.cover)),
        Container(color: Color.fromARGB(1, 88, 42, 114).withOpacity(0.7)),
        Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
            itemCount: artista.length,
            itemBuilder: (context, index) {
              return ArtistaWidget(
                nome: artista[index].nome,
                nascimento: artista[index].nascimento,
                img: artista[index].img,
                descricao: artista[index].descricao,
                titulo: artista[index].titulo,
                img2: artista[index].img2,
                descricao2: artista[index].descricao2,
                titulo2: artista[index].titulo2,
              );
            },
          ),
        ),
      ]),
    );
  }
}

class ArtistaWidget extends StatelessWidget {
  final String nome;
  final String nascimento;

  final String img;
  final String descricao;
  final String titulo;
  final String img2;
  final String descricao2;
  final String titulo2;

  ArtistaWidget({
    required this.nome,
    required this.img,
    required this.descricao,
    required this.titulo,
    required this.img2,
    required this.descricao2,
    required this.titulo2,
    required this.nascimento,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            titulo,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 221, 199, 244),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16.0),
          ClipOval(
            child: Image.asset(
              img,
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16.0),
          Card(
            color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.8),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextTitulo(texto: "Nome Completo:", tipo: true),
                  TextTitulo(texto: nome, tipo: false),
                  const SizedBox(height: 10),
                  TextTitulo(texto: "Nascimento:", tipo: true),
                  TextTitulo(texto: nascimento, tipo: false),
                  const SizedBox(height: 10),
                  TextTitulo(texto: "História:", tipo: true),
                  TextTitulo(texto: descricao, tipo: false),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
          Container(height: 50,),
          Text(
            titulo2,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 221, 199, 244),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16.0),
          ClipOval(
            child: Image.asset(
              img2,
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16.0),
          Card(
            color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.8),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextTitulo(texto: descricao2, tipo: false),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<Artista> artista = [
  Artista(
    titulo: 'Ikumi Nakamura: A Artista por Trás do Terror e da Fantasia',
    nome: 'Ikumi Nakamura',
    nascimento: '8 de outubro de 1985 no Japão',
    descricao:
        'Ikumi Nakamura (中村 育美) é uma artista e diretora de videogame japonesa, amplamente reconhecida por seu trabalho na Tango Gameworks, onde atuou como artista em The Evil Within (2014) e The Evil Within 2 (2017),além de ter sido diretora criativa de Ghostwire: Tokyo.\n\n'
        'Antes de sua passagem pela Tango, Ikumi também fez arte para Ōkami (2006) no Clover Studio e para Bayonetta (2009) na PlatinumGames.\n\n'
        'Atualmente, ela dirige seu próprio estúdio de jogos independente, chamado Unseen.',
    img: 'assets/img/ikumi1.jpg',
    titulo2: 'Vida Pessoal e Formação',
    img2: 'assets/img/ikumi3.jpg',
    descricao2:
        'Desde a infância, Ikumi tinha uma forte conexão com o universo do terror, alimentada por momentos compartilhados com seu pai, assistindo a filmes de horror e jogando séries como Resident Evil e Devil May Cry, ambas da Capcom.\n\n'
        'Essa paixão por jogos e a admiração pela Capcom despertaram nela o desejo de um dia fazer parte do estúdio.\n\n'
        'No entanto, sua vida tomou um rumo difícil quando seu pai faleceu em um acidente de motocicleta durante seu tempo na universidade. Essa tragédia apenas reforçou sua determinação de seguir uma carreira na Capcom.\n\n'
        'Para isso, Ikumi frequentou uma escola de arte em Tóquio e, posteriormente, estudou design de jogos na Amusement Media Academy.',
  )
];
