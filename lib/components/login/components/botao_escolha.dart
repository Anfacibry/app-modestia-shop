import 'package:flutter/material.dart';

import '../../../config/style/app_style.dart';
import '../../../config/theme/app_color.dart';

class BotaoEscolha extends StatelessWidget {
  final void Function() fun;
  final bool isImage;
  final String image;
  final String conta;
  const BotaoEscolha({
    required this.fun,
    required this.isImage,
    this.image = "",
    this.conta = "",
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final (_, width) = AppStyle.screenSize(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.onPrimaryColor,
        elevation: 5,
        fixedSize: Size(
          width,
          width * .13,
        ),
      ),
      onPressed: fun,
      child: LayoutBuilder(
        builder: (contextb, constraint) => Row(
          children: [
            isImage
                ? Image.asset(
                    image,
                    height: constraint.maxHeight * .8,
                  )
                : const SizedBox(),
            const Spacer(),
            isImage
                ? Text(
                    "Continuar com o $conta",
                    style: AppStyle.textBody(tamanho: 18),
                  )
                : Text(
                    "Ou acessar com Email ou iphone",
                    style: AppStyle.textBody(tamanho: 18),
                  ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
