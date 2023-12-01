import 'package:app_fashion_shop/config/style/app_style.dart';
import 'package:app_fashion_shop/config/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../components/login/components/imagem_logo.dart';
import '../components/login/components/list_network_button.dart';
import '../components/login/components/lista_login_rede_escolhida.dart';
import '../store/store_login.dart';

class RegistrationUserNetwork extends StatelessWidget {
  const RegistrationUserNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    final StoreLogin storeLogin =
        Provider.of<StoreLogin>(context, listen: false);
    final (height, width) = AppStyle.screenSize(context);

    return PopScope(
      onPopInvoked: (bool ver) {
        storeLogin.typeAccountAccessed(Account.vazio);
      },
      child: Scaffold(
        body: SafeArea(
          child: SizedBox(
            height: height,
            width: width,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                  right: width * .1,
                  left: width * .1,
                ),
                child: Column(
                  children: [
                    ImagemLogo(tamanhaoImagem: width * .8),

                    ///Deve editar aqui

                    Column(
                      children: [
                        Text(
                          "Escreva-se",
                          style: AppStyle.textBody(tamanho: 32),
                        ),
                        const Text(
                          "É mais fácil se inscrever agora",
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColor.textHeadline4Color,
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
                        image: storeLogin.imageNetwork,
                        conta: storeLogin.account,
                      ),
                    ),

                    ///Caixa de texto deve ser mudado
                    const Padding(padding: EdgeInsets.only(top: 35)),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.primaryColor,
                          foregroundColor: AppColor.onPrimaryColor,
                          fixedSize: Size(
                            width * .5,
                            width * .11,
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
                        style: AppStyle.textBody(tamanho: 16),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 40)),
                    ListNetworkButton(
                      account: storeLogin,
                      funFacebook: () {
                        storeLogin.typeAccountAccessed(Account.facebook);
                      },
                      funGoogle: () {
                        storeLogin.typeAccountAccessed(Account.google);
                      },
                      funX: () {
                        storeLogin.typeAccountAccessed(Account.x);
                      },
                      width: width,
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
