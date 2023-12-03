import 'package:app_fashion_shop/components/box_text_form_field.dart';
import 'package:app_fashion_shop/components/login/components/imagem_logo.dart';
import 'package:app_fashion_shop/components/login/components/list_network_button.dart';
import 'package:app_fashion_shop/config/routes/named_routes.dart';
import 'package:app_fashion_shop/store/store_login.dart';
import 'package:app_fashion_shop/config/style/app_style.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../config/theme/app_color.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final storeLogin = Provider.of<StoreLogin>(context, listen: false);

    final (height, width) = AppStyle.screenSize(context);

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: height,
          width: width,
          child: Padding(
            padding: EdgeInsets.only(
              right: width * .1,
              left: width * .1,
            ),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ImagemLogo(tamanhaoImagem: width * .8),
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    Text(
                      "Faça o login com a sua conta",
                      style: AppStyle.textBody(size: 20),
                    ),
                    BoxTextFormeField(
                      height: width * .15,
                      text: "E-mail",
                      isSenha: false,
                      hintText: "Ex: joao@gmail.com",
                      borderColor: const Color(0xFF696969),
                    ),
                    AppStyle.space(),
                    BoxTextFormeField(
                      height: width * .15,
                      text: "Senha",
                      isSenha: true,
                      hintText: "Ex: Bob@076",
                      borderColor: const Color(0xFF696969),
                    ),
                    Row(
                      children: [
                        Observer(
                          builder: (_) => Switch(
                            activeColor: AppColor.onPrimaryContainerColor,
                            activeTrackColor: AppColor.primaryContainerColor,
                            value: storeLogin.rememberPassword,
                            onChanged: (value) {
                              storeLogin.isRememberPassword(value);
                            },
                          ),
                        ),
                        const Text("Lembrar senha"),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Esqueci minha senha",
                            style: AppStyle.textBody(size: 14),
                          ),
                        ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 30)),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.primaryColor,
                          foregroundColor: AppColor.onPrimaryColor,
                          fixedSize: Size(
                            width * .5,
                            width * .10,
                          ),
                          elevation: 5,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, NamedRoutes.routeHome);
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
                        style: AppStyle.textBody(size: 16),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 30)),
                    ListNetworkButton(
                      account: storeLogin,
                      funFacebook: () {
                        storeLogin.typeAccountAccessed(Account.facebook);
                        Navigator.pushNamed(context,
                            NamedRoutes.routeSocialNetworkRegistration);
                      },
                      funGoogle: () {
                        storeLogin.typeAccountAccessed(Account.google);
                        Navigator.pushNamed(context,
                            NamedRoutes.routeSocialNetworkRegistration);
                      },
                      funX: () {
                        storeLogin.typeAccountAccessed(Account.x);
                        Navigator.pushNamed(context,
                            NamedRoutes.routeSocialNetworkRegistration);
                      },
                      width: width,
                    ),
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    Center(
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Se não tem conta, ",
                            style: AppStyle.textBody(size: 16)),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(
                                  context, NamedRoutes.routeLoginRegistration);
                            },
                          text: "criar conta",
                          style: AppStyle.textTitleSecondary(size: 16),
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
