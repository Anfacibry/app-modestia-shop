import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../store/store_home.dart';
import '../../style/theme/cores.dart';

class IndicePropaganda extends StatelessWidget {
  final BuildContext contextLogin;
  final int indiceComparacao;

  const IndicePropaganda({
    required this.indiceComparacao,
    required this.contextLogin,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final StoreHome storeHome = Provider.of(contextLogin, listen: false);
    return Observer(
      builder: (_) => Padding(
        padding: const EdgeInsets.only(right: 10),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          height: 10,
          width: storeHome.indice == indiceComparacao ? 30 : 20,
          decoration: BoxDecoration(
              color: storeHome.indice == indiceComparacao
                  ? CorApp.corPrimaria
                  : CorApp.corOnSecundaria,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 2),
                  blurRadius: 3,
                  blurStyle: BlurStyle.normal,
                )
              ]),
        ),
      ),
    );
  }
}
