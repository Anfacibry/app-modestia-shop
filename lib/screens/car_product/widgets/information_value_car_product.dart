import 'package:flutter/material.dart';

import '../../../config/style/app_style.dart';
import '../../../config/theme/app_color.dart';

class InformationValueCarProduct extends StatelessWidget {
  final String title;
  final double value;
  final bool isTotal;
  const InformationValueCarProduct({
    required this.title,
    required this.value,
    required this.isTotal,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyle.textFormFild(size: 22),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < 8; i++)
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.textFormFildColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 3,
                  width: 15,
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
