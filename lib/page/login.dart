import 'package:app_fashion_shop/components/botao_redes_sociais_login.dart';
import 'package:app_fashion_shop/components/caixa_de_texto_login.dart';

import 'package:flutter/material.dart';

import '../theme/cores.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  bool verificar = false;
  @override
  Widget build(BuildContext context) {
    ({double altura, double largura}) dimensao = (
      altura: MediaQuery.of(context).size.height,
      largura: MediaQuery.of(context).size.width,
    );
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
                    const Text(
                      "Faça o login com a sua conta",
                      style: TextStyle(
                        color: Color(0xFF696969),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const CaixaDeTextoLogin(
                      texto: "E-mail",
                      isSenha: false,
                    ),
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    const CaixaDeTextoLogin(
                      texto: "Senha",
                      isSenha: true,
                    ),
                    Row(
                      children: [
                        Switch(
                          activeColor: CorApp.corPrimaria,
                          value: verificar,
                          onChanged: (valor) {
                            setState(() {
                              verificar = valor;
                            });
                          },
                        ),
                        const Text("Lembrar senha"),
                        const Spacer(),
                        const Text(
                          "Esqueci minha senha",
                          style: TextStyle(
                            color: CorApp.corOnPrimariaContainer,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(
                            dimensao.largura * .6,
                            dimensao.largura * .12,
                          ),
                          elevation: 5,
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Login",
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 40)),
                    const Center(
                      child: Text(
                        "-Ou entre com-",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF696969),
                          fontWeight: FontWeight.bold,
                        ),
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
                        textAlign: TextAlign.center,
                        text: const TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: "Se não tem conta,",
                            style: TextStyle(
                              color: Color(0xFF696969),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: " criar conta",
                            style: TextStyle(
                              color: CorApp.corOnPrimariaContainer,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ]),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
