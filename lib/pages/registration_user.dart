import 'package:app_fashion_shop/components/login/components/imagem_logo.dart';
import 'package:app_fashion_shop/components/login/components/list_network_button.dart';
import 'package:app_fashion_shop/config/routes/named_routes.dart';
import 'package:app_fashion_shop/config/theme/app_color.dart';

import 'package:app_fashion_shop/store/store_login.dart';
// import 'package:app_fashion_shop/components/login/components/lista_login_rede_escolhida.dart';
import 'package:app_fashion_shop/config/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/box_text_form_field.dart';

class RegistrationUser extends StatelessWidget {
  const RegistrationUser({super.key});

  @override
  Widget build(BuildContext context) {
    final StoreLogin storeLogin =
        Provider.of<StoreLogin>(context, listen: false);
    final (height, width) = AppStyle.screenSize(context);

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: height,
          width: width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                right: height * .1,
                left: width * .1,
              ),
              child: Column(
                children: [
                  ImagemLogo(tamanhaoImagem: width * .5),

                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(AppStyle.imageProfile),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Editar perfil",
                          style: AppStyle.textBody(tamanho: 16),
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
                        style: AppStyle.textBody(tamanho: 20),
                      ),
                      const BoxTextFormeField(
                        text: "Nome e sobrenome",
                        isSenha: false,
                        hintText: "Ex: Bruno Dias",
                        borderColor: Color(0xFF696969),
                      ),
                      AppStyle.space(),
                      const BoxTextFormeField(
                        text: "E-mail",
                        isSenha: false,
                        hintText: "Ex: joao@gmail.com",
                        borderColor: Color(0xFF696969),
                      ),
                      AppStyle.space(),
                      const BoxTextFormeField(
                        text: "Senha",
                        isSenha: true,
                        hintText: "Ex: Bob@076",
                        borderColor: Color(0xFF696969),
                      ),
                      AppStyle.space(),
                      const BoxTextFormeField(
                        text: " Repetir senha",
                        isSenha: true,
                        hintText: "",
                        borderColor: Color(0xFF696969),
                      ),
                    ],
                  ),

                  ///Caixa de texto deve ser mudado
                  const Padding(padding: EdgeInsets.only(top: 20)),
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
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  Center(
                    child: Text(
                      "- Ou entre com -",
                      style: AppStyle.textBody(tamanho: 16),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  ListNetworkButton(
                    account: storeLogin,
                    funFacebook: () {
                      storeLogin.typeAccountAccessed(Account.facebook);
                      Navigator.pushNamed(
                          context, NamedRoutes.routeSocialNetworkRegistration);
                    },
                    funGoogle: () {
                      storeLogin.typeAccountAccessed(Account.google);
                      Navigator.pushNamed(
                          context, NamedRoutes.routeSocialNetworkRegistration);
                    },
                    funX: () {
                      storeLogin.typeAccountAccessed(Account.x);
                      Navigator.pushNamed(
                          context, NamedRoutes.routeSocialNetworkRegistration);
                    },
                    width: width,
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
