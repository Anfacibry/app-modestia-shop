import 'package:flutter/material.dart';

class IndicePropaganda extends StatelessWidget {
  final double largura;
  final Color cor;

  const IndicePropaganda({
    required this.largura,
    required this.cor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 15,
        width: largura,
        decoration: BoxDecoration(
            color: cor,
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
    );
  }
}
