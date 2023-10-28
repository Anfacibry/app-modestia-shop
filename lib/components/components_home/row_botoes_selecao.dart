import 'package:app_fashion_shop/components/components_home/botao_selecao.dart';
import 'package:app_fashion_shop/store/store_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../store/store_dados.dart';
import '../../style/estilo_do_app.dart';

class RowBotoesSelecao extends StatelessWidget {
  final BuildContext contextHome;
  const RowBotoesSelecao({required this.contextHome, super.key});

  @override
  Widget build(BuildContext context) {
    final StoreHome storeHome = Provider.of(contextHome, listen: false);
    final Dados dados = Provider.of<Dados>(context, listen: false);
    return Observer(
      builder: (_) => Row(
        children: [
          BotaoSelecao(
            selecionado: storeHome.selecaoVestidos,
            tituloBotao: "Vestidos",
            fun: () {
              storeHome.selecionandoAba(Selecao.vestidos);
              dados.selecionandoListaDeProdutos(Selecao.vestidos);
            },
          ),
          EstyloApp.espacoMinimo(top: 20),
          BotaoSelecao(
            selecionado: storeHome.selecaoBlusa,
            tituloBotao: "Blusas",
            fun: () {
              storeHome.selecionandoAba(Selecao.blusas);
              dados.selecionandoListaDeProdutos(Selecao.blusas);
            },
          ),
          EstyloApp.espacoMinimo(top: 20),
          BotaoSelecao(
            selecionado: storeHome.selecaoSaias,
            tituloBotao: "Saias",
            fun: () {
              storeHome.selecionandoAba(Selecao.saias);
              dados.selecionandoListaDeProdutos(Selecao.saias);
            },
          ),
          EstyloApp.espacoMinimo(top: 20),
          BotaoSelecao(
            selecionado: storeHome.selecaoBolsas,
            tituloBotao: "Bolsas",
            fun: () {
              storeHome.selecionandoAba(Selecao.bolsas);
              dados.selecionandoListaDeProdutos(Selecao.bolsas);
            },
          ),
        ],
      ),
    );
  }
}
