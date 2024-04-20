import 'package:flutter/material.dart';

class IconMenuFloating extends StatelessWidget {
  final String imagem;
  final String? lable;
  final Color corImagem;
  final Color cor;
  final double radius;
  final bool isLable;

  final bool isBadge;
  final void Function()? fun;
  const IconMenuFloating({
    required this.isLable,
    this.lable,
    required this.isBadge,
    required this.corImagem,
    required this.imagem,
    required this.cor,
    required this.radius,
    this.fun,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fun,
      child: CircleAvatar(
        backgroundColor: cor,
        radius: radius,
        child: Badge(
          backgroundColor: Theme.of(context).colorScheme.primary,
          alignment:
              Alignment.lerp(const Alignment(0, 5), const Alignment(1, 1.5), 2),
          label: isLable ? Text(lable!) : null,
          isLabelVisible: isBadge,
          child: Image.asset(
            imagem,
            color: corImagem,
          ),
        ),
      ),
    );
  }
}
