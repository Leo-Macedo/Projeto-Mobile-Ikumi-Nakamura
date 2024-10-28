import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Jogo {
  final String nome;
  final String img;
  final String descricao;
  final int ano;
  final String participacao;

  Jogo({
    required this.nome,
    required this.img,
    required this.descricao,
    required this.ano,
    required this.participacao,
  });
}

class Artista {
  final String nome;
  final String nascimento;
  final String img;
  final String descricao;
  final String titulo;
  final String img2;
  final String descricao2;
  final String titulo2;

  Artista({
    required this.nome,
    required this.img,
    required this.descricao,
    required this.titulo,
    required this.img2,
    required this.descricao2,
    required this.titulo2,
    required this.nascimento,
  });
}

class Empresa {
  final String nome;
  final int fundacao;
  final String logo;
  final String descricao;
  final String jogo;

  Empresa({
    required this.nome,
    required this.fundacao,
    required this.logo,
    required this.descricao,
    required this.jogo,
  });
}

class Link {
  final String titulo;
  final String img;
  final String url;
  final bool tipo;

  Link({
    required this.titulo,
    required this.img,
    required this.url,
    required this.tipo,
  });

  Future<void> IrParaSite() async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Cannot launch $url";
    }
  }

  void IrParaPagina(BuildContext context) {
    Navigator.of(context).pushNamed(url);
  }

  Future<void> navegar(BuildContext context) async {
    if (tipo) {
      await IrParaSite(); 
    } else {
      IrParaPagina(context); 
    }
  }
}
