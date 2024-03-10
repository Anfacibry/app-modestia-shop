import 'package:app_fashion_shop/config/style/app_style.dart';
import 'package:flutter/material.dart';

class ImagemLogo extends StatelessWidget {
  final double tamanhaoImagem;
  const ImagemLogo({required this.tamanhaoImagem, super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        AppStyle.imageLogo,
        height: tamanhaoImagem,
      ),
    );
  }
}
