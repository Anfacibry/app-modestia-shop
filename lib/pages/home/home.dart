import 'package:app_fashion_shop/components/caixa_de_texto_login.dart';
import 'package:app_fashion_shop/components/components_home/container_propaganda.dart';
import 'package:app_fashion_shop/components/components_home/icone_de_menu_flutuante.dart';
import 'package:app_fashion_shop/components/components_home/indice_propaganda.dart';
import 'package:app_fashion_shop/components/components_home/lista_icone_botao_flutuante.dart';

import 'package:app_fashion_shop/components/components_home/row_botoes_selecao.dart';
import 'package:app_fashion_shop/store/store_home.dart';

import 'package:app_fashion_shop/style/estilo_do_app.dart';
import 'package:app_fashion_shop/style/theme/cores.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:provider/provider.dart';

import '../../store/data/store_dados.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  final List<String> listaImagem = const [
    EstyloApp.imagemPropaganda001,
    EstyloApp.imagemPropaganda002,
    EstyloApp.imagemPropaganda003,
  ];

  @override
  Widget build(BuildContext context) {
    final StoreHome storeHome = Provider.of<StoreHome>(context, listen: false);
    final Dados dados = Provider.of<Dados>(context, listen: false);
    final (double altura, double largura) = EstyloApp.tamanhoTelaApp(context);

    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Image.asset(
              EstyloApp.iconeDrawer,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Nome do Usuário",
          style: EstyloApp.textoPrincipalh1(),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: largura * .05),
            child: Image.asset(
              EstyloApp.imagemPerfil,
              height: 45,
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: altura,
        width: largura,
        child: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: Column(
            children: [
              EstyloApp.espacoMinimo(top: 10),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: CorApp.corOnPrimaria,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 5),
                          blurRadius: 2,
                          blurStyle: BlurStyle.normal,
                        )
                      ],
                    ),
                    child: const CaixaDeTexto(
                      isSenha: false,
                      texto: "Pesquisar",
                      exTexto: "Ex: Vestido longo",
                      corBorda: CorApp.corSecundariaContainer,
                    ),
                  )),
                  EstyloApp.espacoMinimo(top: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CorApp.corPrimaria,
                      elevation: 5,
                      fixedSize: const Size(50, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(0),
                    ),
                    child: Image.asset(
                      EstyloApp.iconeLupa,
                    ),
                  ),
                ],
              ),
              EstyloApp.espacoMinimo(top: 20),
              Container(
                height: largura * .3,
                width: largura,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 8),
                      blurRadius: 5,
                      blurStyle: BlurStyle.normal,
                    )
                  ],
                ),
                child: PageView(
                  controller: PageController(
                    initialPage: storeHome.indice,
                  ),
                  children: [
                    ContainerPropaganda(imagem: listaImagem[0]),
                    ContainerPropaganda(imagem: listaImagem[1]),
                    ContainerPropaganda(imagem: listaImagem[2]),
                  ],
                  onPageChanged: (indice) {
                    storeHome.indicePego(indice);
                  },
                ),
              ),
              EstyloApp.espacoMinimo(top: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IndicePropaganda(
                    contextLogin: context,
                    indiceComparacao: 0,
                  ),
                  IndicePropaganda(
                    contextLogin: context,
                    indiceComparacao: 1,
                  ),
                  IndicePropaganda(
                    contextLogin: context,
                    indiceComparacao: 2,
                  ),
                ],
              ),
              EstyloApp.espacoMinimo(top: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: RowBotoesSelecao(contextHome: context),
              ),
              Expanded(
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
                              padding: EdgeInsets.only(
                                  bottom: constraints.maxHeight * .15),
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
                                color: Colors.blue,
                                child: LayoutBuilder(
                                  builder: (contextBuildCard, constraints) =>
                                      Observer(
                                    builder: (_) => Column(
                                      children: [
                                        SizedBox(
                                          height: constraints.maxHeight * .7,
                                          width: constraints.maxWidth,
                                          child: Image.asset(
                                            dados.listaDeProdutos[indice]
                                                .imagem[0],
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      dados
                                                          .listaDeProdutos[
                                                              indice]
                                                          .nome,
                                                      style: EstyloApp
                                                          .textoPrincipalh1(
                                                              tamanho: 16),
                                                    ),
                                                    Text(
                                                      dados
                                                          .listaDeProdutos[
                                                              indice]
                                                          .preco
                                                          .toString(),
                                                      style: EstyloApp
                                                          .textoSecundarioh2(
                                                              tamanho: 16),
                                                    ),
                                                    Text(
                                                      "No pix\n Ou x de ${(dados.listaDeProdutos[indice].preco / 3).toStringAsFixed(2)}",
                                                      style: EstyloApp
                                                          .textoCaixaDeTexto(
                                                              tamanho: 10),
                                                    ),
                                                  ],
                                                ),
                                                Observer(
                                                  builder: (_) =>
                                                      IconeDeMenuFlutuante(
                                                    corImagem: dados
                                                            .listaDeProdutos[
                                                                indice]
                                                            .isFavorito
                                                        ? CorApp.corSuperficie
                                                        : CorApp.corPrimaria,
                                                    imagem:
                                                        "assets/icons/vavorito.png",
                                                    cor: dados
                                                            .listaDeProdutos[
                                                                indice]
                                                            .isFavorito
                                                        ? CorApp.corPrimaria
                                                        : CorApp.corSuperficie,
                                                    radius: 20,
                                                    fun: () {
                                                      dados.adicionandoFavorito(
                                                          dados.listaDeProdutos[
                                                              indice]);
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
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: largura * .15,
        width: largura * .93,
        decoration: const BoxDecoration(
          color: CorApp.corSuperficie,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 5),
              blurRadius: 2,
              blurStyle: BlurStyle.normal,
            )
          ],
        ),
        child: ListaIconeBotaoFlutuante(
          contextLogin: context,
        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.center,
    );
  }
}
