import 'package:flutter/material.dart';

class IconeDeMenuFlutuante extends StatelessWidget {
  final void Function() fun;
  final String imagem;
  final Color corImagem;
  final Color cor;
  final double radius;
  const IconeDeMenuFlutuante({
    required this.corImagem,
    required this.imagem,
    required this.cor,
    required this.radius,
    required this.fun,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: cor,
      radius: radius,
      child: IconButton(
        onPressed: fun,
        icon: Image.asset(
          imagem,
          color: corImagem,
        ),
      ),
    );
  }
}
