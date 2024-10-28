import 'package:flutter/material.dart';

import 'classes.dart';
import 'jogo_Page.dart';

class EmpresasPage extends StatefulWidget {
  @override
  State<EmpresasPage> createState() {
    return EmpresasPageState();
  }
}

class EmpresasPageState extends State<EmpresasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.apartment, color: Color.fromARGB(255, 241, 203, 252)),
            SizedBox(width: 8),
            Text(
              'Empresas',
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
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
            itemCount: empresas.length,
            itemBuilder: (context, index) {
              return EmpresasWidget(
                nome: empresas[index].nome,
                logo: empresas[index].logo,
                descricao: empresas[index].descricao,
                fundacao: empresas[index].fundacao,
                jogo: empresas[index].jogo,
              );
            },
          ),
        ),
      ]),
    );
  }
}

class EmpresasWidget extends StatelessWidget {
  final String nome;
  final String logo;
  final String descricao;
  final int fundacao;
  final String jogo;

  EmpresasWidget({
    required this.nome,
    required this.logo,
    required this.descricao,
    required this.fundacao,
    required this.jogo,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 700, 
          child: Image.asset(
            logo,
            fit: BoxFit.cover,
          ),
        ),
        Card(
          margin: EdgeInsets.all(16.0),
          color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.8), // Cor e opacidade do card
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    nome,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 221, 199, 244),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextTitulo(texto: "Fundação:", tipo: true),
                TextTitulo(texto: "$fundacao", tipo: false),
                const SizedBox(height: 10),
                TextTitulo(texto: "Descrição:", tipo: true),
                TextTitulo(texto: descricao, tipo: false),
                const SizedBox(height: 10),
                TextTitulo(texto: "Jogos:", tipo: true),
                TextTitulo(texto: jogo, tipo: false),
                const SizedBox(height: 10), 
              ],
            ),
          ),
        ),
      ],
    );
  }
}

List<Empresa> empresas = [
  Empresa(
    nome: 'Capcom',
    fundacao: 2004,
    logo: 'assets/img/capcom1.png',
    descricao:
        'Após se candidatar duas vezes, Ikumi Nakamura foi contratada pela Capcom em 2004. Ela se juntou ao Clover Studio, onde teve a oportunidade de criar a arte de fundo para Ōkami (2006), um jogo que se tornaria um clássico e a colocaria no mapa da indústria de jogos.',
    jogo: 'Ōkami (2006)'
  ),
  Empresa(
    nome: 'PlatinumGames',
    fundacao: 2006,
    logo: 'assets/img/platinum4.png',
    descricao:
        'Ikumi seguiu seus colegas da Capcom ao fundarem a PlatinumGames. No início do estúdio, apresentou uma ideia para um jogo original para Nintendo DS, mas o projeto foi cancelado após a Nintendo não demonstrar interesse. Apesar disso, ela contribuiu como artista conceitual em Bayonetta (2009) e trabalhou brevemente como diretora de arte em Scalebound antes de deixar a empresa.',
    jogo: 'Bayonetta (2009)',
  ),
  Empresa(
    nome: 'Tango Gameworks',
    fundacao: 2010,
    logo: 'assets/img/tango.png',
    descricao:
        'Em 2010, Ikumi se uniu a Shinji Mikami na Tango Gameworks. Durante sua passagem pelo estúdio, ela atuou como artista em The Evil Within (2014) e The Evil Within 2 (2017), além de ser nomeada diretora criativa de Ghostwire: Tokyo. Sua apresentação na E3 2019 foi um dos pontos altos da coletiva de imprensa da Bethesda Softworks, destacando seu talento e visão criativa. No entanto, em 2019, ela deixou o projeto e a empresa devido ao declínio de sua saúde, causado pelo estresse da dinâmica desenvolvedor-editora e pela pressão sobre o controle do projeto.',
    jogo: 'The Evil Within (2014), The Evil Within 2 (2017), Ghostwire: Tokyo (2022)',
  ),
  Empresa(
    nome: 'Unseen',
    fundacao: 2021,
    logo: 'assets/img/unseen.png',
    descricao:
        'Após deixar a Tango Gameworks, Ikumi fez trabalhos de consultoria e freelance. Em março de 2021, anunciou a criação de seu próprio estúdio de jogos independente, chamado Unseen, que foi formalmente revelado no ano seguinte. A intenção de Ikumi é desenvolver novas propriedades intelectuais (IPs) que se expandam para diferentes mídias de entretenimento, mantendo o foco em jogos que explorem mistério, terror, ficção científica e elementos sobrenaturais. O primeiro jogo do estúdio, Kemuri, foi revelado no The Game Awards 2023, prometendo uma nova e intrigante experiência aos jogadores.',
    jogo: 'Kemuri',
  ),
];

