import 'package:app_fashion_shop/store/data/store_dados.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:provider/provider.dart';

import '../../config/style/estilo_do_app.dart';
import '../../config/theme/cores.dart';

class InformacaoDoProduto extends StatelessWidget {
  const InformacaoDoProduto({super.key});

  @override
  Widget build(BuildContext context) {
    final Dados dados = Provider.of<Dados>(context, listen: false);
    final (double _, double largura) = EstyloApp.tamanhoTelaApp(context);
    return Container(
      padding: EdgeInsets.only(
          top: 20, left: largura * .03, right: largura * .03, bottom: 20),
      width: largura,
      decoration: BoxDecoration(
        color: CorApp.corSuperficie,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(largura * .1),
          topRight: Radius.circular(largura * .1),
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) => Observer(
          builder: (ctx) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dados.produtos!.nome,
                    style: EstyloApp.textoSecundarioh3(
                        tamanho: constraints.maxWidth * .065),
                  ),
                  Text(
                    "R\$ ${dados.produtos!.preco}",
                    style: EstyloApp.textoSecundarioh2(
                        tamanho: constraints.maxWidth * .07),
                  ),
                ],
              ),
              EstyloApp.espacoMinimo(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: constraints.maxWidth * .4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            "Cor: ${dados.produtos!.corEImagem[dados.indiceImagemProduto].nome}",
                            style: EstyloApp.textoSecundarioh3(
                              tamanho: constraints.maxWidth * .045,
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: dados.produtos!.corEImagem
                                .map((cores) => Container(
                                      margin: const EdgeInsets.only(right: 5),
                                      height: constraints.maxWidth * .1,
                                      width: constraints.maxWidth * .1,
                                      decoration: BoxDecoration(
                                        color: cores.cor,
                                        borderRadius: BorderRadius.circular(35),
                                        border: dados
                                                    .produtos!
                                                    .corEImagem[dados
                                                        .indiceImagemProduto]
                                                    .cor ==
                                                cores.cor
                                            ? Border.all(
                                                color: CorApp.corSecundaria,
                                                width: 3,
                                              )
                                            : null,
                                        boxShadow: [
                                          EstyloApp.sombra(
                                              corFundo: Colors.black38,
                                              offset: (dx: 0, dy: 2),
                                              blurRadius: 2)
                                        ],
                                      ),
                                    ))
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  EstyloApp.espacoMinimo(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tamanho",
                          style: EstyloApp.textoSecundarioh3(
                              tamanho: constraints.maxWidth * .045),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: dados.produtos!.tamanho
                                .map(
                                  (tamanho) => Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        elevation: 5,
                                      ),
                                      onPressed: () {},
                                      child: Text(tamanho),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              EstyloApp.espacoMinimo(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: CorApp.corPrimaria,
                        foregroundColor: CorApp.corOnPrimaria,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: const Text("Add carrinho"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: constraints.maxWidth * .09,
                          ),
                          Text(
                            "${dados.produtos!.avaliacao}",
                            style: EstyloApp.textoPrincipalh1(
                                tamanho: constraints.maxWidth * .06),
                          )
                        ],
                      ),
                      Text(
                        "Avaliações",
                        style: EstyloApp.textoPrincipalh1(
                            tamanho: constraints.maxWidth * .04),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
