import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../../components/login/components/imagem_logo.dart';
import '../../../components/login/components/lista_botoes_redes.dart';
import '../../../components/login/components/lista_login_rede_escolhida.dart';
import '../../../store/store_login.dart';
import '../../../style/estilo_do_app.dart';
import '../../../style/theme/cores.dart';

class CadastroRedesSociais extends StatelessWidget {
  final BuildContext contextCadastro;
  const CadastroRedesSociais({required this.contextCadastro, super.key});

  @override
  Widget build(BuildContext context) {
    final storeLogin = Provider.of<StoreLogin>(contextCadastro, listen: false);
    final (altura, largura) = EstyloApp.tamanhoTelaApp(context);

    return WillPopScope(
      onWillPop: () async {
        storeLogin.contaVazia();
        return true;
      },
      child: Scaffold(
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
                    ImagemLogo(tamanhaoImagem: largura * .8),

                    ///Deve editar aqui

                    Column(
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
                    ),

                    const Padding(padding: EdgeInsets.all(10)),

                    ///Até aqui!

                    Observer(
                      builder: (_) => ListaLoginRedeEscolhida(
                        funCadastro: () {},
                        funConta: () {},
                        image: storeLogin.imagemRede,
                        conta: storeLogin.conta,
                      ),
                    ),

                    ///Caixa de texto deve ser mudado
                    const Padding(padding: EdgeInsets.only(top: 35)),
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
                    const Padding(padding: EdgeInsets.only(top: 50)),
                    Center(
                      child: Text(
                        "- Ou entre com -",
                        style: EstyloApp.textoPrincipalh1(tamanho: 16),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 40)),
                    ListaBotoesRedes(
                      contas: storeLogin,
                      funFacebook: () {
                        storeLogin.tipoDeContaAcessada(Contas.facebook);
                      },
                      funGoogle: () {
                        storeLogin.tipoDeContaAcessada(Contas.google);
                      },
                      funX: () {
                        storeLogin.tipoDeContaAcessada(Contas.x);
                      },
                      largura: largura,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
