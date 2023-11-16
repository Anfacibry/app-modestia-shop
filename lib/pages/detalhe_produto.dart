import 'package:app_fashion_shop/components/detalhe_pedido/detalhe_container.dart';

import 'package:app_fashion_shop/components/home/lista_icone_botao_flutuante.dart';

import 'package:app_fashion_shop/config/style/estilo_do_app.dart';
import 'package:app_fashion_shop/store/data/store_dados.dart';
import 'package:app_fashion_shop/store/store_home.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../components/home/grid_de_produtos.dart';
import '../config/theme/cores.dart';

class DetalheProduto extends StatelessWidget {
  const DetalheProduto({super.key});

  @override
  Widget build(BuildContext context) {
    final Dados dados = Provider.of<Dados>(context, listen: false);

    final (double altura, double largura) = EstyloApp.tamanhoTelaApp(context);

    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (ctx) => Text(
            dados.produtos!.nome,
            style: EstyloApp.textoCorPrimaria(tamanho: largura * .06),
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/icons/voltar.png",
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/vavorito.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/carrinho.png"),
          ),
          Padding(
            padding: EdgeInsets.only(right: largura * .02),
            child: PopupMenuButton<Selecao>(
              onSelected: (valor) {
                dados.selecionandoListaDeProdutos(valor);
              },
              elevation: 5,
              color: CorApp.corPrimaria,
              itemBuilder: (contx) => <PopupMenuEntry<Selecao>>[
                const PopupMenuItem(
                  value: Selecao.vestidos,
                  child: Text(
                    "Vestidos",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                const PopupMenuItem(
                  value: Selecao.blusas,
                  child: Text(
                    "Blusas",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                const PopupMenuItem(
                  value: Selecao.saias,
                  child: Text(
                    "Saias",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                const PopupMenuItem(
                  value: Selecao.bolsas,
                  child: Text(
                    "Bolsas",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
              icon: Image.asset("assets/icons/opcao.png"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Observer(
              builder: (_) => SizedBox(
                height: altura * .6,
                width: largura,
                child: Stack(children: [
                  PageView(
                    onPageChanged: (indice) {
                      dados.alterandoIndiceImagemProduto(indice);
                    },
                    children: dados.produtos!.corEImagem
                        .map(
                          (elemento) => InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (ctx) => AlertDialog(
                                        clipBehavior: Clip.antiAlias,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        contentPadding: const EdgeInsets.all(0),
                                        content: Image.asset(
                                          elemento.imagem,
                                          fit: BoxFit.cover,
                                        ),
                                      ));
                            },
                            child: Image.asset(
                              elemento.imagem,
                              height: altura * .5,
                              width: largura,
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  Positioned(
                    top: largura * .03,
                    right: largura * .03,
                    child: Observer(
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
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: altura * .2,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -altura * .05,
                    child: const InformacaoDoProduto(),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: largura * .03, right: largura * .03),
              child: Column(
                children: [
                  SizedBox(
                    height: altura * .7,
                    width: largura,
                    child: GridDeProdutos(
                        isTelaHome: false,
                        isFab: false,
                        dados: dados,
                        largura: largura),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
