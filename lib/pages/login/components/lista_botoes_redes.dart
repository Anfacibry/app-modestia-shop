import 'package:app_fashion_shop/style/estilo_do_app.dart';
import 'package:flutter/material.dart';

import 'botao_redes_sociais_login.dart';

class ListaBotoesRedes extends StatelessWidget {
  const ListaBotoesRedes({super.key});

  @override
  Widget build(BuildContext context) {
    final (largura, _) = EstyloApp.tamanhoTelaApp(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BotaoRedesSociaisLogin(
          largura: largura,
          imagem: "assets/image/facebook.png",
        ),
        BotaoRedesSociaisLogin(
          largura: largura,
          imagem: "assets/image/google.png",
        ),
        BotaoRedesSociaisLogin(
          largura: largura,
          imagem: "assets/image/twitter.png",
        ),
      ],
    );
  }
}
