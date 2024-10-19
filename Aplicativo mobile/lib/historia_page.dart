import 'package:flutter/material.dart';

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
            child: Image.asset('assets/img/ikumi.jpg', fit: BoxFit.cover)),
        Container(color: Color.fromARGB(1, 88, 42, 114).withOpacity(1)),
        Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          height: double.infinity,
          child:  ListView.builder(
            itemCount: conteudoHistoria.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  conteudoHistoria[index],
                ],
              );
            },
          ),
        ),
      ]),
    );
  }
}

List<Conteudo> conteudoHistoria = [
  Conteudo(
      titulo: 'Ikumi Nakamura: A Artista por Trás do Terror e da Fantasia',
      texto:
          'Ikumi Nakamura (中村 育美) é uma artista e diretora de videogame japonesa nascida em 8 de outubro de 1985 no Japão, amplamente reconhecida por seu trabalho na Tango Gameworks, onde atuou como artista em The Evil Within (2014) e The Evil Within 2 (2017), além de ter sido diretora criativa de Ghostwire: Tokyo. Antes de sua passagem pela Tango, Ikumi também fez arte para Ōkami (2006) no Clover Studio e para Bayonetta (2009) na PlatinumGames. Atualmente, ela dirige seu próprio estúdio de jogos independente, chamado Unseen.',
      img: 'assets/img/ikumi1.jpg'),
  Conteudo(
      titulo: 'Vida Pessoal e Formação',
      texto:
          'Desde a infância, Ikumi tinha uma forte conexão com o universo do terror, alimentada por momentos compartilhados com seu pai, assistindo a filmes de horror e jogando séries como Resident Evil e Devil May Cry, ambas da Capcom. Essa paixão por jogos e a admiração pela Capcom despertaram nela o desejo de um dia fazer parte do estúdio. \n          No entanto, sua vida tomou um rumo difícil quando seu pai faleceu em um acidente de motocicleta durante seu tempo na universidade. Essa tragédia apenas reforçou sua determinação de seguir uma carreira na Capcom. Para isso, Ikumi frequentou uma escola de arte em Tóquio e, posteriormente, estudou design de jogos na Amusement Media Academy.',
      img: 'assets/img/ikumi2.jpg'),
];
