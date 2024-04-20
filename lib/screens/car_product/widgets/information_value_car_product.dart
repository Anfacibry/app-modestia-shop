import 'package:flutter/material.dart';

import '../../../config/style/app_style.dart';
import '../../../config/theme/app_color.dart';

class InformationValueCarProduct extends StatelessWidget {
  final String title;
  final double value;
  final bool isTotal;
  final int lengthList;
  const InformationValueCarProduct({
    required this.title,
    required this.value,
    required this.isTotal,
    required this.lengthList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
            style: isTotal
                ? Theme.of(context).textTheme.headlineLarge
                : Theme.of(context).textTheme.titleLarge),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < lengthList; i++)
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.textFormFildColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 2,
                  width: 10,
                ),
            ],
          ),
        ),
        Text(
          value.toStringAsFixed(2),
          style: isTotal
              ? AppStyle.textTitleSecondary(size: 22)
              : AppStyle.textBody(size: 22),
        ),
      ],
    );
  }
}
