import 'package:app_fashion_shop/style/estilo_do_app.dart';
import 'package:app_fashion_shop/style/theme/cores.dart';
import 'package:flutter/material.dart';

class BotaoSelecao extends StatelessWidget {
  final bool selecionado;
  final String tituloBotao;
  final void Function() fun;

  const BotaoSelecao({
    required this.selecionado,
    required this.tituloBotao,
    required this.fun,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final (double _, double largura) = EstyloApp.tamanhoTelaApp(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:
            selecionado ? CorApp.corPrimaria : CorApp.corSuperficie,
        elevation: 5,
        fixedSize: Size(largura * .3, 0),
        padding: const EdgeInsets.all(0),
      ),
      onPressed: fun,
      child: Text(
        tituloBotao,
        style: TextStyle(
          fontSize: 20,
          color:
              selecionado ? CorApp.corOnPrimaria : CorApp.corTextoPrincipalh1,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
