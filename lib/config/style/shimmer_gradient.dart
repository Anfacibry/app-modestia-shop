import 'package:app_fashion_shop/config/theme/app_color.dart';
import 'package:flutter/material.dart';

const shimmerGradient = LinearGradient(
  colors: [
    AppColor.primaryContainerColor,
    AppColor.secundaryColor,
    AppColor.primaryContainerColor,
  ],
  stops: [0.1, 0.3, 0.4],
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
  tileMode: TileMode.clamp,
);
