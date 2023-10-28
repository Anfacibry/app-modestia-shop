import 'package:flutter/material.dart';

import '../../../style/estilo_do_app.dart';
import '../../../style/theme/cores.dart';

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
    final (_, largura) = EstyloApp.tamanhoTelaApp(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: CorApp.corOnPrimaria,
        elevation: 5,
        fixedSize: Size(
          largura,
          largura * .13,
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
                    style: EstyloApp.textoPrincipalh1(tamanho: 18),
                  )
                : Text(
                    "Ou acessar com Email ou iphone",
                    style: EstyloApp.textoPrincipalh1(tamanho: 18),
                  ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
