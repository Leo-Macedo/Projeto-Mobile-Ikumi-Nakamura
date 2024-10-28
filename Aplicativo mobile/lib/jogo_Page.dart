import 'package:flutter/material.dart';

import 'classes.dart';

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
        title: Row(
          children: [
            Icon(Icons.sports_esports,
                color: Color.fromARGB(255, 241, 203, 252)),
            SizedBox(width: 8),
            Text(
              'Jogos',
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
          child: Image.asset('assets/img/ikumi.jpg', fit: BoxFit.cover),
        ),
        Container(
          color: Color.fromARGB(255, 88, 42, 114).withOpacity(1),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
            itemCount: jogos.length,
            itemBuilder: (context, index) {
              return JogoWidget(
                nome: jogos[index].nome,
                img: jogos[index].img,
                descricao: jogos[index].descricao,
                ano: jogos[index].ano,
                participacao: jogos[index].participacao,
              );
            },
          ),
        ),
      ]),
    );
  }
}

class JogoWidget extends StatelessWidget {
  final String nome;
  final String img;
  final String descricao;
  final int ano;
  final String participacao;

  JogoWidget({
    required this.nome,
    required this.img,
    required this.descricao,
    required this.ano,
    required this.participacao,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Imagem do jogo
        SizedBox(
          height: 700, // Altura fixa para o widget do jogo
          child: Image.asset(
            img,
            fit: BoxFit.cover,
          ),
        ),
        // Card com cor e opacidade
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
                TextTitulo(texto: "Lançamento:", tipo: true),
                TextTitulo(texto: "$ano", tipo: false),
                const SizedBox(height: 10),
                TextTitulo(texto: "Participação:", tipo: true),
                TextTitulo(texto: participacao, tipo: false),
                const SizedBox(height: 10),
                TextTitulo(texto: "Descrição:", tipo: true),
                TextTitulo(texto: descricao, tipo: false),
                const SizedBox(height: 10), // Um espaço extra abaixo da descrição
              ],
            ),
          ),
        ),
      ],
    );
  }
}



class TextTitulo extends StatelessWidget {
  final String texto;
  final bool tipo;

  const TextTitulo({
    required this.texto,
    required this.tipo,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: tipo
            ? Color.fromARGB(255, 221, 199, 244)
            : Color.fromARGB(255, 255, 255, 255),
        height: 2, // Aumente este valor para mais espaçamento entre linhas
      ),
    );
  }
}




List<Jogo> jogos = [
  Jogo(
    nome: "Ōkami",
    img: "assets/img/okami.jpg",
    descricao:
        "Ōkami é um jogo de ação e aventura que se destaca por seu estilo artístico inspirado na pintura tradicional japonesa. Os jogadores controlam Amaterasu, a deusa do sol, que assume a forma de um lobo. Em um mundo corrompido por demônios, Amaterasu deve restaurar a beleza e a vida usando o 'Celestial Brush'.",
    ano: 2006,
    participacao:
        "Ikumi Nakamura trabalhou na produção de fundo, criando cenários vibrantes que definiram a estética única do jogo.",
  ),
  Jogo(
    nome: "Bayonetta",
    img: "assets/img/bayonetta.jpg",
    descricao:
        "Bayonetta é um jogo de ação hack and slash que segue a protagonista Bayonetta, uma bruxa que luta contra anjos e demônios. O jogo é conhecido por seu combate rápido e estilizado, com combos elaborados e uma narrativa cheia de ação e humor.",
    ano: 2009,
    participacao:
        "Como artista conceitual, Ikumi foi fundamental na criação do design dos personagens e no desenvolvimento da estética visual do jogo, contribuindo para sua identidade marcante.",
  ),
  Jogo(
    nome: "Marvel vs. Capcom 3: Fate of Two Worlds",
    img: "assets/img/marvel.jpg",
    descricao:
        "Este jogo de luta em equipe combina personagens da Marvel e da Capcom, permitindo que jogadores escolham seus heróis e vilões favoritos para batalhas intensas. As cinemáticas capturam a emoção e a ação do jogo.",
    ano: 2011,
    participacao:
        "Ikumi trabalhou nas cinemáticas, garantindo que as sequências de combate fossem visualmente cativantes e que a narrativa fluísse de forma envolvente.",
  ),
  Jogo(
    nome: "Street Fighter X Tekken",
    img: "assets/img/street.jpg",
    descricao:
        "Street Fighter X Tekken é um crossover de luta que reúne personagens icônicos de duas franquias, permitindo que os jogadores formem equipes e lutem em batalhas de tag. O jogo apresenta um sistema de combate dinâmico.",
    ano: 2012,
    participacao:
        "Como pintora, Ikumi contribuiu para a estética vibrante e colorida do jogo, ajudando a moldar a identidade visual dos personagens de maneira atraente e reconhecível.",
  ),
  Jogo(
    nome: "Ultra Street Fighter IV",
    img: "assets/img/ultra.jfif",
    descricao:
        "Ultra Street Fighter IV é uma atualização de um dos títulos mais amados da série, introduzindo novos personagens, cenários e mecânicas, mantendo o equilíbrio entre os lutadores existentes.",
    ano: 2014,
    participacao:
        "Ikumi colaborou como artista conceitual, oferecendo designs refinados que revitalizaram o jogo e ajudaram a mantê-lo relevante em um mercado competitivo.",
  ),
  Jogo(
    nome: "The Evil Within",
    img: "assets/img/evil.jpg",
    descricao:
        "The Evil Within é um survival horror que segue o detetive Sebastian Castellanos, preso em um mundo distorcido e aterrorizante, povoado por criaturas grotescas. O design visual combina elementos de horror psicológico e ação intensa.",
    ano: 2014,
    participacao:
        "Como artista conceitual líder, Ikumi foi essencial na criação da atmosfera opressiva e visualmente intrigante do jogo, utilizando cenários sombrios e detalhados.",
  ),
  Jogo(
    nome: "Street Fighter V",
    img: "assets/img/streetV.jpg",
    descricao:
        "Street Fighter V traz novos e antigos personagens de volta à arena de luta, apresentando gráficos atualizados e um modo história expandido, garantindo que cada personagem tenha um design visual único.",
    ano: 2016,
    participacao:
        "Ikumi atuou como artista conceitual de personagens, ajudando a definir a aparência dos lutadores e garantindo uma estética coerente que captura suas personalidades.",
  ),
  Jogo(
    nome: "The Evil Within 2",
    img: "assets/img/evil2.jpg",
    descricao:
        "No sequel The Evil Within 2, o jogo explora temas de perda e redenção em um mundo ainda mais distorcido. A atmosfera e a paleta de cores acentuam o horror psicológico da narrativa.",
    ano: 2017,
    participacao:
        "Ikumi participou como artista de arte adicional, aprofundando o estilo visual e a atmosfera do jogo, enriquecendo a experiência imersiva.",
  ),
  Jogo(
    nome: "Ghostwire: Tokyo",
    img: "assets/img/ghost.jpg",
    descricao:
        "Ghostwire: Tokyo se passa em uma Tóquio contemporânea assombrada por espíritos sobrenaturais. Os jogadores controlam Akito, que deve enfrentar essas entidades e descobrir o que aconteceu com a cidade.",
    ano: 2022,
    participacao:
        "Ikumi foi diretora criativa inicial, moldando a narrativa e o design artístico, criando um mundo intrigante que mistura horror e ação.",
  ),
  Jogo(
    nome: "Gungrave GORE",
    img: "assets/img/gun.jpg",
    descricao:
        "Gungrave GORE é um jogo de ação que combina tiroteio frenético com uma narrativa envolvente, seguindo Grave em um mundo distópico.",
    ano: 2022,
    participacao:
        "Como consultora de arte, Ikumi contribuiu para o design visual do jogo, assegurando uma estética coesa que reflete a intensidade da ação.",
  ),
];
