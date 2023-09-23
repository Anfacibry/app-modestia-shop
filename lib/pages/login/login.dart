import 'package:app_fashion_shop/components/caixa_de_texto_login.dart';
import 'package:app_fashion_shop/pages/login/components/imagem_logo.dart';
import 'package:app_fashion_shop/pages/login/components/lista_botoes_redes.dart';
import 'package:app_fashion_shop/pages/login/routes/cadastro.dart';
import 'package:app_fashion_shop/style/estilo_do_app.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';

import '../../style/theme/cores.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  bool verificar = false;
  @override
  Widget build(BuildContext context) {
    final (altura, largura) = EstyloApp.tamanhoTelaApp(context);
    debugPrint("Altura tela login: $altura");
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: altura,
          width: largura,
          child: Padding(
            padding: EdgeInsets.only(
              right: largura * .1,
              left: largura * .1,
            ),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ImagemLogo(tamanhaoImagem: largura * .8),
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    Text(
                      "Faça o login com a sua conta",
                      style: EstyloApp.textoPrincipalh1(tamanho: 20),
                    ),
                    const CaixaDeTextoLogin(
                      texto: "E-mail",
                      isSenha: false,
                      exTexto: "Ex: joao@gmail.com",
                    ),
                    EstyloApp.espacoMinimo,
                    const CaixaDeTextoLogin(
                      texto: "Senha",
                      isSenha: true,
                      exTexto: "Ex: Bob@076",
                    ),
                    Row(
                      children: [
                        Switch(
                          activeColor: CorApp.corOnPrimariaContainer,
                          activeTrackColor: CorApp.corPrimariaContainer,
                          value: verificar,
                          onChanged: (valor) {
                            setState(() {
                              verificar = valor;
                            });
                          },
                        ),
                        const Text("Lembrar senha"),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Esqueci minha senha",
                            style: EstyloApp.textoCorPrimaria(tamanho: 14),
                          ),
                        ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 30)),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CorApp.corPrimaria,
                          foregroundColor: CorApp.corOnPrimaria,
                          fixedSize: Size(
                            largura * .5,
                            largura * .10,
                          ),
                          elevation: 5,
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 40)),
                    Center(
                      child: Text(
                        "- Ou entre com -",
                        style: EstyloApp.textoPrincipalh1(tamanho: 16),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 30)),
                    ListaBotoesRedes(
                      isFace: false,
                      funFacebook: () {},
                      funGoogle: () {},
                      funX: () {},
                      largura: largura,
                    ),
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    Center(
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Se não tem conta, ",
                            style: EstyloApp.textoPrincipalh1(tamanho: 16)),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const TelaDeCadastro(
                                    imagemPerfil: "assets/image/perfil.png",
                                  ),
                                ),
                              );
                            },
                          text: "criar conta",
                          style: EstyloApp.textoCorPrimaria(tamanho: 16),
                        ),
                      ])),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
