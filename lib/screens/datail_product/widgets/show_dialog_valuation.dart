import 'package:app_fashion_shop/store/config_data.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class ShowDialogValuation extends StatelessWidget {
  final double height;
  const ShowDialogValuation({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          IconButtonVoluation(index: 1, size: height),
          IconButtonVoluation(index: 2, size: height),
          IconButtonVoluation(index: 3, size: height),
          IconButtonVoluation(index: 4, size: height),
          IconButtonVoluation(index: 5, size: height),
        ],
      ),
    );
  }
}

class IconButtonVoluation extends StatelessWidget {
  final int index;
  final double size;
  const IconButtonVoluation({
    super.key,
    required this.index,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    final ConfigData configData =
        Provider.of<ConfigData>(context, listen: false);
    return Observer(
      builder: (ctx) => IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            configData.tackValuationAssessment(index);
          },
          icon: Icon(
            configData.valuation >= index
                ? Icons.star_rounded
                : Icons.star_border_rounded,
            color: Colors.orange,
            size: size * .06,
          )),
    );
  }
}
