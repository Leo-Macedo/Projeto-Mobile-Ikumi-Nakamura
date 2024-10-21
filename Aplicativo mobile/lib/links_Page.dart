import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkPage extends StatefulWidget {
  @override
  State<LinkPage> createState() {
    return LinkPageState();
  }
}

class LinkPageState extends State<LinkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.link, color: Color.fromARGB(255, 241, 203, 252)),
            SizedBox(width: 8),
            Text(
              'Links',
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
          child: Column(
            children: [
              Text(
                'Links',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
              SizedBox(height: 20), // Espaço entre o texto e a lista
              Expanded( // Envolve o ListView em um Expanded
                child: ListView.builder(
                  itemCount: link.length,
                  itemBuilder: (context, index) {
                    return Link( 
                      titulo: link[index].titulo,
                      img: link[index].img,
                      url: link[index].url,
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

class Link extends StatelessWidget {
  final String titulo;
  final String img;
  final String url; // Parâmetro agora é uma String para a URL

  Link({required this.titulo, required this.img, required this.url});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url); // Cria o Uri a partir da URL completa
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Cannot launch $url"; // Mensagem de erro mais informativa
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 20),
        Container(
          width: 400, // Defina a largura desejada

          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(400, 60), // Largura e altura do botão
            ),
            onPressed: () async {
              // Tenta abrir a URL
              _launchURL(url);
            },
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Centraliza o conteúdo
              children: [
                Image.asset(
                  img, // Exibe a imagem
                  width: 30, // Defina a largura desejada para a imagem
                  height: 30, // Defina a altura desejada para a imagem
                ),
                SizedBox(width: 10), // Espaçamento entre a imagem e o texto
                Text(
                  titulo,
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

List<ClasseLink> link = [x, instagram, siteUnseen];

class ClasseLink {
  late String titulo;
  late String img;
  late String url;

  ClasseLink(this.titulo, this.img, this.url);
}

ClasseLink x = ClasseLink('X Ikumi Nakamura', 'assets/img/x.png',
    'https://twitter.com/nakamura193?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor');
ClasseLink instagram = ClasseLink('Instagram Unseen',
    'assets/img/instagram.png', 'https://www.instagram.com/unseentokyo');
ClasseLink siteUnseen = ClasseLink('Site Unseen',
    'assets/img/unseen2.png', 'https://www.unseen-tokyo.com/');
