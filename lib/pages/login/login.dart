import 'package:app_fashion_shop/components/caixa_de_texto_login.dart';
import 'package:app_fashion_shop/components/components_login/components/imagem_logo.dart';
import 'package:app_fashion_shop/components/components_login/components/lista_botoes_redes.dart';
import 'package:app_fashion_shop/pages/home/home.dart';
import 'package:app_fashion_shop/store/store_login.dart';
// import 'package:app_fashion_shop/pages/login/routes/cadastro_redes_sociais.dart';
import 'package:app_fashion_shop/style/estilo_do_app.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../style/theme/cores.dart';
import 'routes/cadastro_caixa_texto.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'routes/cadastro_redes_sociais.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    final storeLogin = Provider.of<StoreLogin>(context, listen: false);

    final (altura, largura) = EstyloApp.tamanhoTelaApp(context);

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
                    const CaixaDeTexto(
                      texto: "E-mail",
                      isSenha: false,
                      exTexto: "Ex: joao@gmail.com",
                      corBorda: Color(0xFF696969),
                    ),
                    EstyloApp.espacoMinimo(),
                    const CaixaDeTexto(
                      texto: "Senha",
                      isSenha: true,
                      exTexto: "Ex: Bob@076",
                      corBorda: Color(0xFF696969),
                    ),
                    Row(
                      children: [
                        Observer(
                          builder: (_) => Switch(
                            activeColor: CorApp.corOnPrimariaContainer,
                            activeTrackColor: CorApp.corPrimariaContainer,
                            value: storeLogin.lembrarSenha,
                            onChanged: (valor) {
                              storeLogin.isLembrarSenha(valor);
                            },
                          ),
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const Home(),
                              ));
                        },
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
                      contas: storeLogin,
                      funFacebook: () {
                        storeLogin.tipoDeContaAcessada(Contas.facebook);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => CadastroRedesSociais(
                                contextCadastro: context,
                              ),
                            ));
                      },
                      funGoogle: () {
                        storeLogin.tipoDeContaAcessada(Contas.google);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => CadastroRedesSociais(
                                contextCadastro: context,
                              ),
                            ));
                      },
                      funX: () {
                        storeLogin.tipoDeContaAcessada(Contas.x);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => CadastroRedesSociais(
                                contextCadastro: context,
                              ),
                            ));
                      },
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
                                  builder: (contextPage) =>
                                      // const CadastroRedesSociais()
                                      TelaDeCadastroCaixaTexto(
                                    contexteLogin: context,
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
