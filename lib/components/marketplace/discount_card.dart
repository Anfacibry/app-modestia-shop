import 'package:app_fashion_shop/store/models/store_product.dart';
import 'package:flutter/material.dart';

import '../../config/style/app_style.dart';
import '../../config/theme/app_color.dart';

class DiscountCard extends StatelessWidget {
  final double height;
  final double width;
  final Product product;
  final int discount;
  const DiscountCard({
    required this.product,
    required this.height,
    required this.width,
    required this.discount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * .22,
      width: width,
      child: Card(
        elevation: 5,
        surfaceTintColor: AppColor.onPrimaryColor,
        child: Padding(
          padding: EdgeInsets.all(width * .015),
          child: Row(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  product.imageColor[0].image,
                  width: height * .12,
                  height: height * 9,
                  fit: BoxFit.cover,
                ),
              ),
              AppStyle.space(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    product.name,
                    style: AppStyle.textBody(size: height * .035),
                  ),
                  Text(
                    "${product.price}",
                    style: AppStyle.textFormFild(size: height * .035),
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "Por ",
                      style: AppStyle.textBody(size: height * .03),
                    ),
                    TextSpan(
                      text: (product.price - ((product.price * discount) / 100))
                          .toStringAsFixed(2),
                      style: AppStyle.textTitleSecondary(size: height * .05),
                    )
                  ])),
                ],
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$discount%",
                    style: AppStyle.textTitleSecondary(size: height * .08),
                  ),
                  Text(
                    "de desconto",
                    style: AppStyle.textBody(size: height * .03),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
