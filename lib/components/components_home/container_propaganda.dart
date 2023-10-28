import 'package:flutter/material.dart';

import '../../style/theme/cores.dart';

class ContainerPropaganda extends StatelessWidget {
  final String imagem;
  const ContainerPropaganda({required this.imagem, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CorApp.corPrimaria,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
          image: AssetImage(
            imagem,
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
