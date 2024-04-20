import 'package:flutter/material.dart';

import '../../../config/style/app_style.dart';
import '../../../config/theme/app_color.dart';

class BoxTextFormeFieldSuffixIcon extends StatefulWidget {
  final double height;
  final String text;
  final String hintText;
  final Color borderColor;
  final TextEditingController controller;
  final void Function(String)? fun;
  final Widget? childSuffixIcon;

  const BoxTextFormeFieldSuffixIcon({
    required this.controller,
    required this.height,
    this.borderColor = AppColor.textFormFildColor,
    required this.text,
    required this.hintText,
    required this.childSuffixIcon,
    this.fun,
    super.key,
  });
  @override
  State<BoxTextFormeFieldSuffixIcon> createState() =>
      _BoxTextFormeFieldSuffixIcon();
}

class _BoxTextFormeFieldSuffixIcon extends State<BoxTextFormeFieldSuffixIcon> {
  bool isPassword = false;
  @override
  Widget build(BuildContext context) {
    final (_, width) = AppStyle.screenSize(context);
    return Material(
      clipBehavior: Clip.none,
      elevation: 5,
      shadowColor: Colors.black87,
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        height: widget.height,
        width: width,
        child: TextFormField(
          onChanged: widget.fun,
          controller: widget.controller,
          cursorColor: const Color(0xFF696969),
          decoration: InputDecoration(
            fillColor: AppColor.onPrimaryColor,
            filled: true,
            suffixIcon: widget.childSuffixIcon,
            labelText: widget.text,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            hintText: widget.hintText,
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                color: widget.borderColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                color: widget.borderColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
