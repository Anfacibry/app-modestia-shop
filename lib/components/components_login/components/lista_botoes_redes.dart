import 'package:app_fashion_shop/store/store_login.dart';
import 'package:app_fashion_shop/style/estilo_do_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'botao_redes_sociais_login.dart';

class ListaBotoesRedes extends StatelessWidget {
  final void Function() funFacebook;
  final void Function() funGoogle;
  final void Function() funX;
  final StoreLogin contas;
  final double largura;
  const ListaBotoesRedes({
    required this.contas,
    required this.funFacebook,
    required this.funGoogle,
    required this.funX,
    required this.largura,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          contas.contaAcessada == Contas.facebook
              ? caixaTamanhoFixo(largura: largura)
              : BotaoRedesSociaisLogin(
                  fun: funFacebook,
                  largura: largura,
                  imagem: EstyloApp.imagemFacebook,
                ),
          contas.contaAcessada == Contas.google
              ? caixaTamanhoFixo(largura: largura)
              : BotaoRedesSociaisLogin(
                  fun: funGoogle,
                  largura: largura,
                  imagem: EstyloApp.imagemGoogle,
                ),
          contas.contaAcessada == Contas.x
              ? caixaTamanhoFixo(largura: largura)
              : BotaoRedesSociaisLogin(
                  fun: funX,
                  largura: largura,
                  imagem: EstyloApp.imagemX,
                ),
        ],
      ),
    );
  }
}

Widget caixaTamanhoFixo({required double largura}) => SizedBox(
      height: largura * .1,
      width: largura * .2,
    );
