import 'package:flutter/material.dart';

class BotaoRedesSociaisLogin extends StatelessWidget {
  final double largura;
  final String imagem;
  const BotaoRedesSociaisLogin(
      {required this.largura, required this.imagem, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(2),
        height: largura * .1,
        width: largura * .2,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
            ),
            top: BorderSide(
              width: 1,
            ),
            right: BorderSide(
              width: 1,
            ),
            left: BorderSide(
              width: 1,
            ),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Image.asset(
          imagem,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
