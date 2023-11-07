import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../store/store_home.dart';
import '../../config/style/estilo_do_app.dart';
import '../../config/theme/cores.dart';

class ContainerPropaganda extends StatelessWidget {
  final String imagem;
  const ContainerPropaganda({required this.imagem, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CorApp.corPrimaria,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
          image: AssetImage(
            imagem,
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class IndicePropaganda extends StatelessWidget {
  final BuildContext contextLogin;
  final int indiceComparacao;

  const IndicePropaganda({
    required this.indiceComparacao,
    required this.contextLogin,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final StoreHome storeHome = Provider.of(contextLogin, listen: false);
    return Observer(
      builder: (_) => Padding(
        padding: const EdgeInsets.only(right: 10),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          height: 10,
          width: storeHome.indice == indiceComparacao ? 30 : 20,
          decoration: BoxDecoration(
              color: storeHome.indice == indiceComparacao
                  ? CorApp.corPrimaria
                  : CorApp.corOnSecundaria,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                EstyloApp.sombra(
                  corFundo: Colors.black26,
                  offset: (dx: 0, dy: 2),
                  blurRadius: 3,
                ),
              ]),
        ),
      ),
    );
  }
}

class PropagandaHome extends StatelessWidget {
  final StoreHome storeHome;
  final double altura, largura;
  const PropagandaHome({
    required this.storeHome,
    required this.altura,
    required this.largura,
    super.key,
  });

  final List<String> listaImagem = const [
    EstyloApp.imagemPropaganda001,
    EstyloApp.imagemPropaganda002,
    EstyloApp.imagemPropaganda003,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
