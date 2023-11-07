import 'package:app_fashion_shop/config/routes/rotas_nomeadas.dart';
import 'package:app_fashion_shop/store/data/store_dados.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'lista_icone_botao_flutuante.dart';
import '../../config/style/estilo_do_app.dart';
import '../../config/theme/cores.dart';

class GridDeProdutos extends StatelessWidget {
  final bool isFab;
  final Dados dados;
  final double largura;
  const GridDeProdutos({
    required this.isFab,
    required this.dados,
    required this.largura,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: largura,
      child: LayoutBuilder(
        builder: (contextBuilder1, constraints) => SizedBox(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Observer(
              builder: (_) => GridView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(
                  bottom: isFab
                      ? constraints.maxHeight * .15
                      : constraints.maxHeight * .05,
                ),
                itemCount: dados.tamanhoLista,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  childAspectRatio: 1.5,
                ),
                itemBuilder: (contextGrid, indice) => InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RotasNomeadas.detalheProduto);
                  },
                  child: Card(
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
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                decoration: const BoxDecoration(
                                  color: CorApp.corSuperficie,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: constraints.maxWidth * .6,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Text(
                                              dados
                                                  .listaDeProdutos[indice].nome,
                                              style: EstyloApp.textoPrincipalh1(
                                                  tamanho:
                                                      constraints.maxHeight *
                                                          0.06),
                                            ).animate(
                                                autoPlay: true,
                                                delay:
                                                    const Duration(seconds: 2)),
                                          ),
                                          Text(
                                            dados.listaDeProdutos[indice].preco
                                                .toString(),
                                            style: EstyloApp.textoSecundarioh2(
                                                tamanho: constraints.maxHeight *
                                                    0.06),
                                          ),
                                          Text(
                                            "No pix\n Ou x de ${(dados.listaDeProdutos[indice].preco / 3).toStringAsFixed(2)}",
                                            style: EstyloApp.textoCaixaDeTexto(
                                                tamanho: constraints.maxHeight *
                                                    0.04),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: constraints.maxWidth * .3,
                                      child: Observer(
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
                                          radius: constraints.maxHeight * 0.07,
                                          fun: () {
                                            dados.adicionandoFavorito(
                                                dados.listaDeProdutos[indice]);
                                          },
                                        ),
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
          ),
        ),
      ),
    );
  }
}
