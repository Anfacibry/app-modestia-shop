import 'package:app_fashion_shop/components/app_bar.dart';
import 'package:app_fashion_shop/components/caixa_de_texto_login.dart';

import 'package:app_fashion_shop/components/home/lista_icone_botao_flutuante.dart';

import 'package:app_fashion_shop/components/home/row_botoes_selecao.dart';
import 'package:app_fashion_shop/components/home/grid_de_produtos.dart';
import 'package:app_fashion_shop/components/container_com_sombra.dart';

import 'package:app_fashion_shop/store/store_home.dart';

import 'package:app_fashion_shop/config/style/estilo_do_app.dart';

import 'package:app_fashion_shop/config/theme/cores.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../components/home/propaganda.dart';
import '../store/data/store_dados.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final StoreHome storeHome = Provider.of<StoreHome>(context, listen: false);
    final Dados dados = Provider.of<Dados>(context, listen: false);
    final isAtivo = MediaQuery.of(context).viewInsets.bottom;
    final (double altura, double largura) = EstyloApp.tamanhoTelaApp(context);

    return Scaffold(
      drawer: const Drawer(),
      appBar: appBar(largura),
      body: SizedBox(
        height: altura,
        width: largura,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Column(
              children: [
                SizedBox(
                  height: largura * .2,
                  width: largura,
                  child: LayoutBuilder(
                    builder: (context, constraints) => Row(
                      children: [
                        Expanded(
                          child: ContainerComSombra(
                            tamanho: (altura: null, largura: null),
                            corContainer: CorApp.corOnPrimaria,
                            sombra: EstyloApp.sombra(
                              corFundo: Colors.black26,
                              offset: (dx: 0, dy: 5),
                              blurRadius: 2,
                            ),
                            radiusCircular: 20,
                            child: CaixaDeTexto(
                              isSenha: false,
                              texto: "Pesquisar",
                              exTexto: "Ex: Vestido longo",
                              corBorda: CorApp.corSecundariaContainer,
                              fun: () {
                                storeHome.ativandoCaixaDeTexto();
                              },
                            ),
                          ),
                        ),
                        EstyloApp.espacoMinimo(top: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: CorApp.corPrimaria,
                            elevation: 5,
                            fixedSize: Size(constraints.maxHeight * .7,
                                constraints.maxHeight * .7),
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
                  ),
                ),
                PropagandaHome(
                    storeHome: storeHome, altura: altura, largura: largura),
                EstyloApp.espacoMinimo(top: 10),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  child: RowBotoesSelecao(),
                ),
                SizedBox(
                  height: altura * .8,
                  width: largura,
                  child: GridDeProdutos(
                      isTelaHome: true,
                      isFab: true,
                      dados: dados,
                      largura: largura),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: isAtivo != 0
          ? null
          : ContainerComSombra(
              tamanho: (altura: largura * .15, largura: largura * .93),
              corContainer: CorApp.corSuperficie,
              radiusCircular: 30,
              sombra: EstyloApp.sombra(
                corFundo: Colors.black26,
                offset: (dx: 0, dy: 5),
                blurRadius: 2,
              ),
              child: ListaIconeBotaoFlutuante(
                contextLogin: context,
              ),
            ),
      persistentFooterAlignment: AlignmentDirectional.center,
    );
  }
}
