import 'package:app_fashion_shop/components/home/grid_de_produtos.dart';
import 'package:app_fashion_shop/config/style/estilo_do_app.dart';
import 'package:app_fashion_shop/config/theme/cores.dart';
import 'package:app_fashion_shop/store/data/store_dados.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetalheProduto extends StatelessWidget {
  const DetalheProduto({super.key});

  @override
  Widget build(BuildContext context) {
    final Dados dados = Provider.of<Dados>(context, listen: false);
    final (double altura, double largura) = EstyloApp.tamanhoTelaApp(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: altura,
          width: largura,
          child: Stack(
            children: [
              Image.asset(
                "assets/image/vestidos/barbie.jpeg",
                height: altura * .5,
                width: largura,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Image.asset("assets/icons/voltar.png")),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/icons/vavorito.png")),
                ],
              ),
              Positioned(
                top: altura * .4,
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, right: 20, bottom: 20),
                  height: altura * .6,
                  width: largura,
                  decoration: BoxDecoration(
                    color: CorApp.corSuperficie,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(largura * .1),
                      topRight: Radius.circular(largura * .1),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Lindo vestido roso",
                              style: EstyloApp.textoPrincipalh1(tamanho: 26),
                            ),
                            Text(
                              "R\$ 99,90",
                              style: EstyloApp.textoSecundarioh2(tamanho: 26),
                            ),
                          ],
                        ),
                        EstyloApp.espacoMinimo(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Cor: roxo",
                                  style: EstyloApp.textoSecundarioh3(),
                                ),
                                Row(
                                  children: [
                                    const CircleAvatar(
                                      backgroundColor: Colors.pink,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            right: largura * .01)),
                                    const CircleAvatar(
                                      backgroundColor: Colors.blue,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            right: largura * .01)),
                                    const CircleAvatar(
                                      backgroundColor: Colors.orange,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                                padding: EdgeInsets.only(right: largura * .1)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Tamanho",
                                  style: EstyloApp.textoSecundarioh3(),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: CorApp.corSuperficieContainer,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                          boxShadow: [
                                            EstyloApp.sombra(
                                              corFundo: Colors.black12,
                                              offset: (dx: 0, dy: 5),
                                              blurRadius: 2,
                                            ),
                                          ]),
                                      child: Center(
                                          child: Text(
                                        "P",
                                        style: EstyloApp.textoPrincipalh1(),
                                      )),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(right: 5)),
                                    Container(
                                      height: 30,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: CorApp.corPrimaria,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                          boxShadow: [
                                            EstyloApp.sombra(
                                              corFundo: Colors.black12,
                                              offset: (dx: 0, dy: 5),
                                              blurRadius: 2,
                                            ),
                                          ]),
                                      child: const Center(
                                          child: Text(
                                        "M",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(right: 5)),
                                    Container(
                                      height: 30,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: CorApp.corSuperficieContainer,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                          boxShadow: [
                                            EstyloApp.sombra(
                                              corFundo: Colors.black12,
                                              offset: (dx: 0, dy: 5),
                                              blurRadius: 2,
                                            ),
                                          ]),
                                      child: Center(
                                          child: Text(
                                        "G",
                                        style: EstyloApp.textoPrincipalh1(),
                                      )),
                                    ),
                                  ],
                                ),
                              ],
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
                                    const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 40,
                                    ),
                                    Text(
                                      "4.5",
                                      style: EstyloApp.textoPrincipalh1(
                                          tamanho: 20),
                                    )
                                  ],
                                ),
                                Text(
                                  "Avaliações",
                                  style:
                                      EstyloApp.textoPrincipalh1(tamanho: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: altura * .7,
                          width: largura,
                          child: GridDeProdutos(
                              isFab: false, dados: dados, largura: largura),
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
    );
  }
}
