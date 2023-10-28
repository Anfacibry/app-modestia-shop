import 'package:app_fashion_shop/style/estilo_do_app.dart';
import 'package:flutter/material.dart';

class ImagemLogo extends StatelessWidget {
  final double tamanhaoImagem;
  const ImagemLogo({required this.tamanhaoImagem, super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        EstyloApp.imagemLogo,
        height: tamanhaoImagem,
      ),
    );
  }
}
