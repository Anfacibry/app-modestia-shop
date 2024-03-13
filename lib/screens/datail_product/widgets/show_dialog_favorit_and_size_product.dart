import 'package:flutter/material.dart';

import '../../../config/style/app_style.dart';
import '../../../config/theme/app_color.dart';

class ShowDialogFavoritAndSizeProduct {
  static Future favoritAndSizeProduct({
    required BuildContext context,
    required double height,
    required String title,
    required Widget child,
    required void Function() fun,
  }) async {
    return showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        titleTextStyle: AppStyle.textTitleSecondary(),
        content: SizedBox(height: height * .05, child: child),
        actionsAlignment: MainAxisAlignment.spaceBetween,
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Voltar"),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primaryColor,
                  foregroundColor: AppColor.onPrimaryColor,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: fun,
              child: const Text("Confirmar")),
        ],
      ),
    );
  }
}
