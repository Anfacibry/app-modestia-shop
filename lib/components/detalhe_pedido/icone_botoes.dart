import 'package:app_fashion_shop/components/home/lista_icone_botao_flutuante.dart';
import 'package:app_fashion_shop/store/data/store_dados.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../config/theme/cores.dart';

class IconesBotoes extends StatelessWidget {
  const IconesBotoes({super.key});

  @override
  Widget build(BuildContext context) {
    final Dados dados = Provider.of<Dados>(context, listen: false);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/icons/voltar.png",
            )),
        Observer(
          builder: (ctx) => IconeDeMenuFlutuante(
            corImagem: dados.produtos!.isFavorito
                ? CorApp.corSuperficie
                : CorApp.corPrimaria,
            imagem: "assets/icons/vavorito.png",
            cor: dados.produtos!.isFavorito
                ? CorApp.corPrimaria
                : CorApp.corSuperficie,
            radius: 25,
            fun: () {
              dados.adicionandoFavorito(dados.produtos!);
            },
          ),
        ),
      ],
    );
  }
}
