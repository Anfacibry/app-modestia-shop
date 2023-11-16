import 'package:carousel_slider/carousel_slider.dart';
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
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 8),
            blurRadius: 5,
            blurStyle: BlurStyle.normal,
          )
        ],
      ),
    );
  }
}

class IndicePropaganda extends StatelessWidget {
  final int indiceComparacao;

  const IndicePropaganda({
    required this.indiceComparacao,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final StoreHome storeHome = Provider.of<StoreHome>(context, listen: false);
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: largura * .3,
          width: largura,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: CarouselSlider.builder(
            itemCount: storeHome.listaImagem.length,
            itemBuilder: (ctx, index, realIdx) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child:
                    ContainerPropaganda(imagem: storeHome.listaImagem[index]),
              );
            },
            options: CarouselOptions(
              autoPlayInterval: const Duration(seconds: 5),
              autoPlay: true,
              onPageChanged: (index, reason) {
                storeHome.indicePego(index);
              },
              clipBehavior: Clip.none,
            ),
          ),
        ),
        EstyloApp.espacoMinimo(top: 15),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IndicePropaganda(indiceComparacao: 0),
            IndicePropaganda(indiceComparacao: 1),
            IndicePropaganda(indiceComparacao: 2),
            IndicePropaganda(indiceComparacao: 3),
          ],
        ),
      ],
    );
  }
}
