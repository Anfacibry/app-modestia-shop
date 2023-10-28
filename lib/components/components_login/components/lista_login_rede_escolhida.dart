import 'package:app_fashion_shop/components/components_login/components/botao_escolha.dart';
import 'package:flutter/material.dart';

class ListaLoginRedeEscolhida extends StatelessWidget {
  final void Function() funConta;
  final void Function() funCadastro;
  final String image;
  final String conta;
  const ListaLoginRedeEscolhida({
    required this.funConta,
    required this.funCadastro,
    required this.image,
    required this.conta,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BotaoEscolha(
          fun: funConta,
          isImage: true,
          image: image,
          conta: conta,
        ),
        const Padding(padding: EdgeInsets.only(top: 15)),
        BotaoEscolha(fun: funCadastro, isImage: false, image: "", conta: "")
      ],
    );
  }
}
