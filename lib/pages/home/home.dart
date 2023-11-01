import 'package:app_fashion_shop/components/caixa_de_texto_login.dart';

import 'package:app_fashion_shop/components/components_home/lista_icone_botao_flutuante.dart';

import 'package:app_fashion_shop/components/components_home/row_botoes_selecao.dart';
import 'package:app_fashion_shop/components/components_home/grid_de_produtos.dart';
import 'package:app_fashion_shop/components/container_com_sombra.dart';

import 'package:app_fashion_shop/store/store_home.dart';

import 'package:app_fashion_shop/style/estilo_do_app.dart';
import 'package:app_fashion_shop/style/theme/cores.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../components/components_home/propaganda.dart';
import '../../store/data/store_dados.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
              PropagandaHome(
                  storeHome: storeHome, altura: altura, largura: largura),
              EstyloApp.espacoMinimo(top: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: RowBotoesSelecao(contextHome: context),
              ),
              GridDeProdutos(dados: dados, largura: largura),
            ],
          ),
        ),
      ),
      floatingActionButton: storeHome.caixaDeTextoAtivada
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
