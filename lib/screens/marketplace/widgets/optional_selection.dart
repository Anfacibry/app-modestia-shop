import 'package:flutter/material.dart';

import '../../../config/style/app_style.dart';
import '../../../config/theme/app_color.dart';

class OptionalSelection extends StatelessWidget {
  final double width;
  final String icon;
  final void Function() fun;
  final String title;
  const OptionalSelection({
    required this.icon,
    required this.title,
    required this.width,
    required this.fun,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: width * .2,
      width: width * .22,
      child: Center(
        child: Column(
          children: [
            InkWell(
              onTap: fun,
              child: CircleAvatar(
                radius: width * .07,
                backgroundColor: AppColor.primaryColor,
                child: Image.asset(
                  icon,
                  fit: BoxFit.cover,
                  height: width * .1,
                ),
              ),
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppStyle.textBody(size: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class RowOptionalSelection extends StatelessWidget {
  final double width;
  const RowOptionalSelection({required this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OptionalSelection(
          icon: "assets/icons/recarga.png",
          title: "Recarga Celular",
          width: width,
          fun: () {},
        ),
        OptionalSelection(
          icon: "assets/icons/cupom.png",
          title: "Cupom",
          width: width,
          fun: () {},
        ),
        OptionalSelection(
          icon: "assets/icons/ofertas.png",
          title: "Ofertas",
          width: width,
          fun: () {},
        ),
        OptionalSelection(
          icon: "assets/icons/estrela.png",
          title: "Mais vendidos",
          width: width,
          fun: () {},
        ),
        OptionalSelection(
          icon: "assets/icons/dicas.png",
          title: "Dicas",
          width: width,
          fun: () {},
        ),
      ],
    );
  }
}
