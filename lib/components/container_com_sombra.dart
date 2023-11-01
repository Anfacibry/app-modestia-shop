import 'package:flutter/material.dart';

class ContainerComSombra extends StatelessWidget {
  final ({double? altura, double? largura}) tamanho;
  final double radiusCircular;
  final Color corContainer;
  final BoxShadow sombra;
  final Widget child;

  const ContainerComSombra({
    required this.tamanho,
    required this.corContainer,
    required this.radiusCircular,
    required this.sombra,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: tamanho.altura,
      width: tamanho.largura,
      decoration: BoxDecoration(
        color: corContainer,
        borderRadius: BorderRadius.all(Radius.circular(radiusCircular)),
        boxShadow: [sombra],
      ),
      child: child,
    );
  }
}
