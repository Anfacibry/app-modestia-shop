import 'package:app_fashion_shop/config/theme/app_color.dart';
import 'package:app_fashion_shop/store/config_data.dart';

import 'package:flutter/material.dart';

class BottomAddRemoveProduct extends StatelessWidget {
  final double height;
  final IconData icon;
  final ConfigData dataProduct;
  final int index;
  final void Function() fun;
  const BottomAddRemoveProduct({
    required this.icon,
    required this.height,
    required this.dataProduct,
    required this.index,
    required this.fun,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.only(bottom: 1),
      onPressed: fun,
      icon: Icon(
        icon,
        size: 30,
        color: AppColor.onPrimaryContainerColor,
      ),
    );
  }
}


// SizedBox(
//       height: height * .3,
//       width: height * .3,
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: AppColor.surfaceColor,
//           elevation: 5,
//           padding: const EdgeInsets.all(0),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(10),
//           ),
//         ),
//         onPressed: fun,
//         child: Icon(
//           icon,
//           color: AppColor.textHeadline4Color,
//         ),
//       ),
//     );