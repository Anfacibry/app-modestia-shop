import 'package:app_fashion_shop/pages/login/components/botao_redes_sociais_login.dart';
import 'package:app_fashion_shop/components/caixa_de_texto_login.dart';
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
    ({double altura, double largura}) dimensao =
        EstyloApp.tamanhoTelaApp(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: dimensao.altura,
          width: dimensao.largura,
          child: Padding(
            padding: EdgeInsets.only(
              right: dimensao.largura * .1,
              left: dimensao.largura * .1,
            ),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/image/logo.png",
                        height: dimensao.largura * .8,
                      ),
                    ),
                    Text(
                      "Faça o login com a sua conta",
                      style: EstyloApp.textoPrincipalh1(tamanho: 20),
                    ),
                    const CaixaDeTextoLogin(
                      texto: "E-mail",
                      isSenha: false,
                      exTexto: "Ex: joao@gmail.com",
                    ),
                    const Padding(padding: EdgeInsets.only(top: 20)),
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
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CorApp.corPrimaria,
                          foregroundColor: CorApp.corOnPrimaria,
                          fixedSize: Size(
                            dimensao.largura * .6,
                            dimensao.largura * .12,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BotaoRedesSociaisLogin(
                          largura: dimensao.largura,
                          imagem: "assets/image/facebook.png",
                        ),
                        BotaoRedesSociaisLogin(
                          largura: dimensao.largura,
                          imagem: "assets/image/google.png",
                        ),
                        BotaoRedesSociaisLogin(
                          largura: dimensao.largura,
                          imagem: "assets/image/twitter.png",
                        ),
                      ],
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
                                  builder: (context) => const TelaDeCadastro(),
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
