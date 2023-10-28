import 'package:app_fashion_shop/components/components_login/components/imagem_logo.dart';
import 'package:app_fashion_shop/components/components_login/components/lista_botoes_redes.dart';
import 'package:app_fashion_shop/pages/login/routes/cadastro_redes_sociais.dart';
import 'package:app_fashion_shop/store/store_login.dart';
// import 'package:app_fashion_shop/components/login/components/lista_login_rede_escolhida.dart';
import 'package:app_fashion_shop/style/estilo_do_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/caixa_de_texto_login.dart';
import '../../../style/theme/cores.dart';

class TelaDeCadastroCaixaTexto extends StatelessWidget {
  final BuildContext contexteLogin;
  const TelaDeCadastroCaixaTexto({
    required this.contexteLogin,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final storeLogin = Provider.of<StoreLogin>(contexteLogin, listen: false);
    final (altura, largura) = EstyloApp.tamanhoTelaApp(context);

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
                  ImagemLogo(tamanhaoImagem: largura * .5),

                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(EstyloApp.imagemPerfil),
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

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Preencha com seus dados",
                        style: EstyloApp.textoPrincipalh1(tamanho: 20),
                      ),
                      const CaixaDeTexto(
                        texto: "Nome e sobrenome",
                        isSenha: false,
                        exTexto: "Ex: Bruno Dias",
                        corBorda: Color(0xFF696969),
                      ),
                      EstyloApp.espacoMinimo(),
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
                      EstyloApp.espacoMinimo(),
                      const CaixaDeTexto(
                        texto: " Repetir senha",
                        isSenha: true,
                        exTexto: "",
                        corBorda: Color(0xFF696969),
                      ),
                    ],
                  ),

                  ///Caixa de texto deve ser mudado
                  const Padding(padding: EdgeInsets.only(top: 20)),
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
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  Center(
                    child: Text(
                      "- Ou entre com -",
                      style: EstyloApp.textoPrincipalh1(tamanho: 16),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  ListaBotoesRedes(
                    contas: storeLogin,
                    funFacebook: () {
                      storeLogin.tipoDeContaAcessada(Contas.facebook);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => CadastroRedesSociais(
                              contextCadastro: contexteLogin,
                            ),
                          ));
                    },
                    funGoogle: () {
                      storeLogin.tipoDeContaAcessada(Contas.google);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => CadastroRedesSociais(
                              contextCadastro: contexteLogin,
                            ),
                          ));
                    },
                    funX: () {
                      storeLogin.tipoDeContaAcessada(Contas.x);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => CadastroRedesSociais(
                              contextCadastro: contexteLogin,
                            ),
                          ));
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
