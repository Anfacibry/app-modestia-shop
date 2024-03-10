import 'package:app_fashion_shop/store/store_login.dart';
import 'package:app_fashion_shop/config/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../config/theme/app_color.dart';

class ListNetworkButton extends StatelessWidget {
  final void Function() funFacebook;
  final void Function() funGoogle;
  final void Function() funX;
  final StoreLogin account;
  final double width;
  const ListNetworkButton({
    required this.account,
    required this.funFacebook,
    required this.funGoogle,
    required this.funX,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          account.accountAccessed == Account.facebook
              ? caixaTamanhoFixo(largura: width)
              : ButtonNetworkSocial(
                  fun: funFacebook,
                  largura: width,
                  imagem: AppStyle.imageFacebook,
                ),
          account.accountAccessed == Account.google
              ? caixaTamanhoFixo(largura: width)
              : ButtonNetworkSocial(
                  fun: funGoogle,
                  largura: width,
                  imagem: AppStyle.imageGoogle,
                ),
          account.accountAccessed == Account.x
              ? caixaTamanhoFixo(largura: width)
              : ButtonNetworkSocial(
                  fun: funX,
                  largura: width,
                  imagem: AppStyle.imageX,
                ),
        ],
      ),
    );
  }
}

Widget caixaTamanhoFixo({required double largura}) => SizedBox(
      height: largura * .1,
      width: largura * .2,
    );

class ButtonNetworkSocial extends StatelessWidget {
  final void Function() fun;
  final double largura;
  final String imagem;
  const ButtonNetworkSocial(
      {required this.fun,
      required this.largura,
      required this.imagem,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fun,
      child: Container(
        padding: const EdgeInsets.all(5),
        height: largura * .1,
        width: largura * .2,
        decoration: BoxDecoration(
          color: AppColor.onPrimaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            AppStyle.shadow(
              backgroundColor: AppColor.textHeadline4Color,
              offset: (dx: 0, dy: 5),
              blurRadius: 5.6,
            ),
          ],
        ),
        child: Image.asset(
          imagem,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
