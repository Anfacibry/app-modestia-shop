import 'package:app_fashion_shop/store/config_data.dart';
import 'package:flutter/material.dart';

import '../../config/style/app_style.dart';

class BottomAddRemoveProduct extends StatelessWidget {
  final double height;
  final String title;
  final ConfigData dataProduct;
  final int index;
  final void Function() fun;
  const BottomAddRemoveProduct({
    required this.title,
    required this.height,
    required this.dataProduct,
    required this.index,
    required this.fun,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * .25,
      width: height * .3,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 5,
              padding: const EdgeInsets.all(0),
              minimumSize: Size(
                height * .25,
                height * .25,
              )),
          onPressed: fun,
          child: Text(
            title,
            style: AppStyle.textBody(size: height * .2),
          )),
    );
  }
}
