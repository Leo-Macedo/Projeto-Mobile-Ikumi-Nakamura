import 'package:flutter/material.dart';

import 'classes.dart';

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
              Expanded(
                // Envolve o ListView em um Expanded
                child: ListView.builder(
                  itemCount: links.length,
                  itemBuilder: (context, index) {
                    return LinkWidget(link: links[index]);
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

class LinkWidget extends StatelessWidget {
  final Link link;
  
  LinkWidget({required this.link});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 20),
        Container(
          width: 400, 
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
                  MainAxisAlignment.center, 
              children: [
                Image.asset(
                  link.img, 
                  width: 30, 
                  height: 30, 
                ),
                SizedBox(width: 10), 
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
      ],
    );
  }
}

List<Link> links = [
  Link(
    titulo: 'X Ikumi Nakamura',
    img: 'assets/img/x.png',
    url:
        'https://twitter.com/nakamura193?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
    tipo: true,
  ),
  Link(
    titulo: 'Instagram Unseen',
    img: 'assets/img/instagram.png',
    url: 'https://www.instagram.com/unseentokyo',
    tipo: true,
  ),
  Link(
    titulo: 'Site Unseen',
    img: 'assets/img/unseen2.png',
    url: 'https://www.unseen-tokyo.com/',
    tipo: true,
  ),
];
