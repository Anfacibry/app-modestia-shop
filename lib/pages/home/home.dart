import 'package:app_fashion_shop/components/caixa_de_texto_login.dart';

import 'package:app_fashion_shop/style/estilo_do_app.dart';
import 'package:app_fashion_shop/style/theme/cores.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final (double altura, double largura) = EstyloApp.tamanhoTelaApp(context);
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {},
          child: Image.asset(
            EstyloApp.iconeDrawer,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Nome do Usuário",
          style: EstyloApp.textoPrincipalh1(),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: largura * .03),
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
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
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
                    child: const CaixaDeTextoLogin(
                      isSenha: false,
                      texto: "Pesquisar",
                      exTexto: "Ex: Vestido longo",
                      corBorda: Color.fromARGB(255, 224, 224, 224),
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
                        borderRadius: BorderRadius.circular(10),
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
                  color: CorApp.corPrimaria,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage(
                      EstyloApp.imagemPropaganda,
                    ),
                    fit: BoxFit.fill,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 8),
                      blurRadius: 5,
                      blurStyle: BlurStyle.normal,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
