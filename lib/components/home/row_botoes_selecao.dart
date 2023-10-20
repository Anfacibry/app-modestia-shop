import 'package:app_fashion_shop/components/home/botao_selecao.dart';
import 'package:app_fashion_shop/store/store_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../style/estilo_do_app.dart';

class RowBotoesSelecao extends StatelessWidget {
  final BuildContext contextHome;
  const RowBotoesSelecao({required this.contextHome, super.key});

  @override
  Widget build(BuildContext context) {
    final StoreHome storeHome = Provider.of(contextHome, listen: false);
    return Observer(
      builder: (_) => Row(
        children: [
          BotaoSelecao(
            selecionado: storeHome.selecaoVestidos,
            tituloBotao: "Vestidos",
            fun: () {
              storeHome.selecionandoAba(Selecao.vestidos);
            },
          ),
          EstyloApp.espacoMinimo(top: 20),
          BotaoSelecao(
            selecionado: storeHome.selecaoBlusa,
            tituloBotao: "Blusas",
            fun: () {
              storeHome.selecionandoAba(Selecao.blusas);
            },
          ),
          EstyloApp.espacoMinimo(top: 20),
          BotaoSelecao(
            selecionado: storeHome.selecaoSaias,
            tituloBotao: "Saias",
            fun: () {
              storeHome.selecionandoAba(Selecao.saias);
            },
          ),
          EstyloApp.espacoMinimo(top: 20),
          BotaoSelecao(
            selecionado: storeHome.selecaoBolsas,
            tituloBotao: "Bolsas",
            fun: () {
              storeHome.selecionandoAba(Selecao.bolsas);
            },
          ),
        ],
      ),
    );
  }
}
