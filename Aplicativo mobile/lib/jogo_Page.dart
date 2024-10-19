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
            child: Image.asset('assets/img/ikumi.jpg', fit: BoxFit.cover)),
        Container(color: Color.fromARGB(1, 88, 42, 114).withOpacity(1)),
        Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
            itemCount: conteudosJogos.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  conteudosJogos[index],
                ],
              );
            },
          ),
        ),
      ]),
    );
  }
}

class Conteudo extends StatelessWidget {
  final String titulo;
  final String texto;
  final String img;

  const Conteudo({
    Key? key,
    required this.titulo,
    required this.texto,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String textofinal = '          ' + texto;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 50),
        Text(
          titulo,
          style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 220, 148, 242)),
        ),
        const SizedBox(height: 20),
        Center(
          child: Container(
            height: 200,
            width: 800,
            child: Image.asset(img),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          textofinal,
          style: const TextStyle(
              fontSize: 20, color: Color.fromARGB(255, 237, 187, 252)),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}

List<Conteudo> conteudosJogos = [
      Conteudo(
        titulo: 'Ōkami (2006)',
        texto:
            'Ikumi Nakamura trabalhou na produção de fundo deste jogo de ação e aventura, que se destaca por seu estilo artístico inspirado na pintura tradicional japonesa. Os jogadores controlam Amaterasu, a deusa do sol, que assume a forma de um lobo. Em um mundo em que a natureza foi corrompida por demônios, Amaterasu deve restaurar a beleza e a vida usando o “Celestial Brush”, uma mecânica que permite desenhar no ambiente para resolver quebra-cabeças e derrotar inimigos. O trabalho de Ikumi foi fundamental para criar os cenários vibrantes e imersivos que definem o jogo, contribuindo para sua recepção calorosa como um dos melhores jogos de sua época.',
        img: 'assets/img/Okami.jpg',
      ),
      Conteudo(
        titulo: 'Bayonetta (2009)',
        texto:
            'Como artista conceitual, Ikumi Nakamura desempenhou um papel crucial em Bayonetta, um jogo de ação hack and slash que segue a protagonista Bayonetta, uma bruxa que luta contra anjos e demônios em uma narrativa repleta de ação e humor. O jogo é conhecido por seu combate rápido e estilizado, com combos elaborados e um design de personagens marcante. A estética extravagante e os visuais dinâmicos são resultados da visão artística de Ikumi, que ajudou a definir a identidade visual do jogo, tornando-o um clássico cult e um sucesso comercial.',
        img: 'assets/img/bayonetta.jpg',
      ),
      Conteudo(
        titulo: 'Marvel vs. Capcom 3 (2011)',
        texto:
            'Em Marvel vs. Capcom 3: Fate of Two Worlds, Ikumi trabalhou nas cinemáticas, que apresentam confrontos épicos entre personagens da Marvel e da Capcom. Este jogo de luta em equipe combina os mundos de ambos os universos, permitindo que jogadores escolham seus heróis e vilões favoritos para batalhas intensas. As cinemáticas, que capturam a emoção e a ação do jogo, foram aprimoradas pelo trabalho de Ikumi, que garantiu que cada luta fosse visualmente cativante e envolvente, elevando a experiência geral.',
        img: 'assets/img/marvel.jpg',
      ),
      Conteudo(
        titulo: 'Street Fighter X Tekken (2012)',
        texto:
            'Neste crossover de luta, Ikumi Nakamura atuou como pintora, contribuindo para a estética vibrante e colorida que caracteriza o jogo. Street Fighter X Tekken reúne personagens icônicos das duas franquias, permitindo que os jogadores formem equipes e lutem em batalhas de tag. O jogo apresenta um sistema de combate dinâmico e uma variedade de modos de jogo. A arte de Ikumi ajudou a moldar a identidade visual dos personagens, garantindo que eles fossem atraentes e reconhecíveis, mantendo a essência de cada franquia.',
        img: 'assets/img/street.jpg',
      ),
      Conteudo(
        titulo: 'Ultra Street Fighter IV (2014)',
        texto:
            'Em Ultra Street Fighter IV, Ikumi colaborou como artista conceitual, contribuindo para a atualização e expansão de um dos títulos mais amados da série. O jogo introduz novos personagens, cenários e mecânicas, mantendo o equilíbrio entre os lutadores existentes. A habilidade de Ikumi em criar designs de personagens e cenários refinados foi essencial para revitalizar o jogo, permitindo que ele se mantivesse relevante em uma era de competições acirradas no gênero de luta.',
        img: 'assets/img/ultra.jfif',
      ),
      Conteudo(
        titulo: 'The Evil Within (2014)',
        texto:
            'Ikumi Nakamura foi a artista conceitual líder de The Evil Within, um survival horror criado por Shinji Mikami. O jogo segue o detetive Sebastian Castellanos, que, ao investigar uma cena de crime, se encontra preso em um mundo distorcido e aterrorizante, povoado por criaturas grotescas e armadilhas mortais. O design visual do jogo, que combina elementos de horror psicológico e ação intensa, é profundamente influenciado pelo trabalho de Ikumi, que ajudou a criar uma atmosfera opressiva e visualmente intrigante, marcada por cenários sombrios e detalhados.',
        img: 'assets/img/evil.jpg',
      ),
      Conteudo(
        titulo: 'Street Fighter V (2016)',
        texto:
            'Em Street Fighter V, Ikumi atuou novamente como artista conceitual de personagens, ajudando a definir a aparência dos lutadores e a estética geral do jogo. Este título traz novos e antigos personagens de volta à arena de luta, apresentando gráficos atualizados e um modo história expandido. A contribuição de Ikumi garantiu que cada personagem tivesse um design visual único e coerente, capturando a essência de suas personalidades e habilidades.',
        img: 'assets/img/streetV.jpg',
      ),
      Conteudo(
        titulo: 'The Evil Within 2 (2017)',
        texto:
            'No sequel The Evil Within 2, Ikumi participou como artista de arte adicional, aprofundando o estilo visual e a atmosfera do jogo. Continuando a história de Sebastian Castellanos, o jogo explora temas de perda e redenção em um mundo ainda mais distorcido e aberto. O trabalho de Ikumi ajudou a enriquecer a experiência imersiva, com uma paleta de cores e detalhes visuais que acentuam o horror psicológico da narrativa.',
        img: 'assets/img/evil2.jpg',
      ),
      Conteudo(
        titulo: 'Ghostwire: Tokyo (2022)',
        texto:
            'Ikumi foi diretora criativa inicial de Ghostwire: Tokyo, um jogo que se passa em uma Tóquio contemporânea assombrada por espíritos sobrenaturais. Os jogadores controlam Akito, que deve usar habilidades especiais para enfrentar essas entidades e descobrir o que aconteceu com a cidade. A visão de Ikumi ajudou a moldar a narrativa e o design artístico, criando um mundo intrigante e visualmente impressionante que mistura elementos de horror e ação.',
        img: 'assets/img/ghost.jpg',
      ),
      Conteudo(
        titulo: 'Gungrave GORE (2022)',
        texto:
            'Em Gungrave GORE, Ikumi atuou como consultora de arte, contribuindo para o design visual de um jogo de ação que combina tiroteio frenético com uma narrativa envolvente. O jogo segue Grave, que deve enfrentar inimigos em um mundo distópico. A experiência de Ikumi foi vital para garantir que a estética do jogo fosse atraente e coesa, refletindo a intensidade da ação.',
        img: 'assets/img/gun.jpg',
      ),
    ];
