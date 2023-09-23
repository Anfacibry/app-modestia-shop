import 'package:app_fashion_shop/pages/login/components/imagem_logo.dart';
import 'package:app_fashion_shop/pages/login/components/lista_botoes_redes.dart';
import 'package:app_fashion_shop/pages/login/components/lista_login_rede_escolhida.dart';
import 'package:app_fashion_shop/style/estilo_do_app.dart';
import 'package:flutter/material.dart';

import '../../../components/caixa_de_texto_login.dart';
import '../../../style/theme/cores.dart';

class TelaDeCadastro extends StatefulWidget {
  final String imagemPerfil;
  const TelaDeCadastro({required this.imagemPerfil, super.key});

  @override
  State<TelaDeCadastro> createState() => _TelaDeCadastroState();
}

class _TelaDeCadastroState extends State<TelaDeCadastro> {
  String imagem = "";
  String conta = "";
  bool contaAcessada = false;
  bool isFace = false;
  bool isGoogle = false;
  bool isX = false;

  void acessoContaRede() {
    if ((isFace || isGoogle || isX)) {
      setState(() {
        contaAcessada = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final (altura, largura) = EstyloApp.tamanhoTelaApp(context);
    debugPrint("Altura cadastro: $altura");
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: altura,
          width: largura,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                right: largura * .1,
                left: largura * .1,
              ),
              child: Column(
                children: [
                  ImagemLogo(
                      tamanhaoImagem:
                          contaAcessada ? largura * .8 : largura * .5),

                  ///Deve editar aqui
                  contaAcessada
                      ? Column(
                          children: [
                            Text(
                              "Escreva-se",
                              style: EstyloApp.textoPrincipalh1(tamanho: 32),
                            ),
                            const Text(
                              "É mais fácil se inscrever agora",
                              style: TextStyle(
                                fontSize: 18,
                                color: CorApp.corTextoPrincipalh1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(widget.imagemPerfil),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Editar perfil",
                                style: EstyloApp.textoPrincipalh1(tamanho: 16),
                              ),
                            )
                          ],
                        ),

                  const Padding(padding: EdgeInsets.all(10)),

                  ///Até aqui!
                  contaAcessada
                      ? ListaLoginRedeEscolhida(
                          funCadastro: () {
                            setState(() {
                              contaAcessada = !contaAcessada;
                              isFace = false;
                              isGoogle = false;
                              isX = false;
                            });
                          },
                          funConta: () {},
                          image: imagem,
                          conta: conta,
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Preencha com seus dados",
                              style: EstyloApp.textoPrincipalh1(tamanho: 20),
                            ),
                            const CaixaDeTextoLogin(
                              texto: "Nome e sobrenome",
                              isSenha: false,
                              exTexto: "Ex: Bruno Dias",
                            ),
                            EstyloApp.espacoMinimo,
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
                            EstyloApp.espacoMinimo,
                            const CaixaDeTextoLogin(
                              texto: " Repetir senha",
                              isSenha: true,
                              exTexto: "",
                            ),
                          ],
                        ),

                  ///Caixa de texto deve ser mudado
                  Padding(
                      padding: EdgeInsets.only(top: contaAcessada ? 35 : 20)),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CorApp.corPrimaria,
                        foregroundColor: CorApp.corOnPrimaria,
                        fixedSize: Size(
                          largura * .5,
                          largura * .11,
                        ),
                        elevation: 5,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Cadastrar",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: contaAcessada ? 35 : 20)),
                  Center(
                    child: Text(
                      "- Ou entre com -",
                      style: EstyloApp.textoPrincipalh1(tamanho: 16),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: contaAcessada ? 35 : 20)),
                  ListaBotoesRedes(
                    isFace: isFace,
                    isGoogle: isGoogle,
                    isX: isX,
                    funFacebook: () {
                      setState(() {
                        conta = "Facebook";
                        imagem = "assets/image/facebook.png";

                        isFace = !isFace;
                        if (isGoogle) {
                          isGoogle = !isGoogle;
                        }
                        if (isX) {
                          isX = !isX;
                        }
                      });
                      acessoContaRede();
                    },
                    funGoogle: () {
                      setState(() {
                        conta = "Google";
                        imagem = "assets/image/google.png";

                        isGoogle = !isGoogle;
                        if (isFace) {
                          isFace = !isFace;
                        }
                        if (isX) {
                          isX = !isX;
                        }
                      });
                      acessoContaRede();
                    },
                    funX: () {
                      setState(() {
                        conta = "X";
                        imagem = "assets/image/x.png";

                        isX = !isX;
                        if (isGoogle) {
                          isGoogle = !isGoogle;
                        }
                        if (isFace) {
                          isFace = !isFace;
                        }
                      });
                      acessoContaRede();
                    },
                    largura: largura,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
