import 'package:app_fashion_shop/store/data/store_dados.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'lista_icone_botao_flutuante.dart';
import '../../style/estilo_do_app.dart';
import '../../style/theme/cores.dart';

class GridDeProdutos extends StatelessWidget {
  final Dados dados;
  final double largura;
  const GridDeProdutos({
    required this.dados,
    required this.largura,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: largura,
        child: LayoutBuilder(
          builder: (contextBuilder1, constraints) => SizedBox(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Observer(
                    builder: (_) => GridView.builder(
                      padding:
                          EdgeInsets.only(bottom: constraints.maxHeight * .15),
                      itemCount: dados.tamanhoLista,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 4,
                              mainAxisSpacing: 4,
                              childAspectRatio: 0.75,
                              crossAxisCount: 2),
                      itemBuilder: (contextGrid, indice) => Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: LayoutBuilder(
                          builder: (contextBuildCard, constraints) => Observer(
                            builder: (_) => Column(
                              children: [
                                SizedBox(
                                  height: constraints.maxHeight * .7,
                                  width: constraints.maxWidth,
                                  child: Image.asset(
                                    dados.listaDeProdutos[indice].imagem[0],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    decoration: const BoxDecoration(
                                      color: CorApp.corSuperficie,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              dados
                                                  .listaDeProdutos[indice].nome,
                                              style: EstyloApp.textoPrincipalh1(
                                                  tamanho: 16),
                                            ),
                                            Text(
                                              dados
                                                  .listaDeProdutos[indice].preco
                                                  .toString(),
                                              style:
                                                  EstyloApp.textoSecundarioh2(
                                                      tamanho: 16),
                                            ),
                                            Text(
                                              "No pix\n Ou x de ${(dados.listaDeProdutos[indice].preco / 3).toStringAsFixed(2)}",
                                              style:
                                                  EstyloApp.textoCaixaDeTexto(
                                                      tamanho: 10),
                                            ),
                                          ],
                                        ),
                                        Observer(
                                          builder: (_) => IconeDeMenuFlutuante(
                                            corImagem: dados
                                                    .listaDeProdutos[indice]
                                                    .isFavorito
                                                ? CorApp.corSuperficie
                                                : CorApp.corPrimaria,
                                            imagem: "assets/icons/vavorito.png",
                                            cor: dados.listaDeProdutos[indice]
                                                    .isFavorito
                                                ? CorApp.corPrimaria
                                                : CorApp.corSuperficie,
                                            radius: 20,
                                            fun: () {
                                              dados.adicionandoFavorito(dados
                                                  .listaDeProdutos[indice]);
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 10,
                  width: largura,
                  decoration: const BoxDecoration(
                    color: CorApp.corSuperficie,
                    boxShadow: [
                      BoxShadow(
                        color: CorApp.corSuperficie,
                        offset: Offset(0, 5),
                        blurRadius: 4,
                        blurStyle: BlurStyle.normal,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
