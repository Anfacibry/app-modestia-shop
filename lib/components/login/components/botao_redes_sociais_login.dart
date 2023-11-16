import 'package:app_fashion_shop/config/style/estilo_do_app.dart';
import 'package:app_fashion_shop/config/theme/cores.dart';
import 'package:flutter/material.dart';

class BotaoRedesSociaisLogin extends StatelessWidget {
  final void Function() fun;
  final double largura;
  final String imagem;
  const BotaoRedesSociaisLogin(
      {required this.fun,
      required this.largura,
      required this.imagem,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fun,
      child: Container(
        padding: const EdgeInsets.all(5),
        height: largura * .1,
        width: largura * .2,
        decoration: BoxDecoration(
          color: CorApp.corOnPrimaria,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            EstyloApp.sombra(
              corFundo: CorApp.corTextoPrincipalh1,
              offset: (dx: 0, dy: 5),
              blurRadius: 5.6,
            ),
          ],
        ),
        child: Image.asset(
          imagem,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
