import 'package:flutter/material.dart';

class ImagemLogo extends StatelessWidget {
  final double tamanhaoImagem;
  const ImagemLogo({required this.tamanhaoImagem, super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "assets/image/logo.png",
        height: tamanhaoImagem,
      ),
    );
  }
}
