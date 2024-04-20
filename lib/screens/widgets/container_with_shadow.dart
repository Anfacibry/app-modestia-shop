import 'package:flutter/material.dart';

class ContainerWithShadow extends StatelessWidget {
  final ({double? heigth, double? width}) size;
  final double radiusCircular;
  final Color containerColor;
  final BoxShadow shadow;
  final Widget child;

  const ContainerWithShadow({
    required this.size,
    required this.containerColor,
    required this.radiusCircular,
    required this.shadow,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.heigth,
      width: size.width,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.all(Radius.circular(radiusCircular)),
        boxShadow: [shadow],
      ),
      child: child,
    );
  }
}
