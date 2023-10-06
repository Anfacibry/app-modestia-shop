import 'package:app_fashion_shop/style/theme/cores.dart';
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
        decoration: const BoxDecoration(
          color: CorApp.corOnPrimaria,
          border: Border(
            bottom: BorderSide(
              color: CorApp.corTextoPrincipalh1,
              width: 0.5,
            ),
            top: BorderSide(
              color: CorApp.corTextoPrincipalh1,
              width: 0.5,
            ),
            right: BorderSide(
              color: CorApp.corTextoPrincipalh1,
              width: 0,
            ),
            left: BorderSide(
              color: CorApp.corTextoPrincipalh1,
              width: 0,
            ),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: CorApp.corTextoPrincipalh1,
              offset: Offset(0, 5),
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
