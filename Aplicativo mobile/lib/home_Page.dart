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
          child: Image.asset('assets/img/ikumi.jpg', fit: BoxFit.cover),
        ),
        Container(
          color: Colors.black.withOpacity(0.5),
        ),
        Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          height: double.infinity,
          child: Column(
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
              Expanded(
                // Envolve o ListView em um Expanded
                child: ListView.builder(
                  itemCount: botoes.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Botao(
                          texto: botoes[index].texto,
                          rota: botoes[index].rota,
                          icon: botoes[index].icon,
                        ),
                        SizedBox(height: 20),
                      ],
                    );
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
  final String texto;
  final String rota;
  final IconData icon; // Parâmetro agora é obrigatório

  Botao({required this.texto, required this.rota, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200, // Defina a largura desejada
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(200, 60), // Largura e altura do botão
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(rota);
            },
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Centraliza o conteúdo
              children: [
                Icon(
                  icon,
                  color: Color.fromARGB(
                      255, 241, 203, 252), // Cor do ícone igual ao texto
                ),
                SizedBox(width: 10), // Espaçamento entre o ícone e o texto
                Text(
                  texto,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 241, 203, 252),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

List<ClasseBotao> botoes = [
  botaoHistoria,
  botaoJogos,
  botaoEmpresas,
  botaoLinks,
];

class ClasseBotao {
  final String texto;
  final String rota;
  final IconData icon;

  ClasseBotao(this.texto, this.rota, this.icon);
}

ClasseBotao botaoHistoria =
    ClasseBotao('História', '/historia', Icons.description);
ClasseBotao botaoJogos = ClasseBotao('Jogos', '/jogo', Icons.sports_esports);
ClasseBotao botaoEmpresas =
    ClasseBotao('Empresas', '/empresa', Icons.apartment);
ClasseBotao botaoLinks = ClasseBotao('Links', '/links', Icons.link);
