import 'package:app_fashion_shop/config/theme/app_color.dart';

import 'package:flutter/material.dart';

import '../../../config/style/app_style.dart';

class BoxTextFormeField extends StatefulWidget {
  final double height;
  final String text;
  final String hintText;
  final bool isSenha;
  final Color borderColor;
  final TextEditingController controller;
  final void Function(String)? fun;

  const BoxTextFormeField({
    required this.controller,
    required this.height,
    this.borderColor = AppColor.textFormFildColor,
    required this.isSenha,
    required this.text,
    required this.hintText,
    this.fun,
    super.key,
  });
  @override
  State<BoxTextFormeField> createState() => _BoxTextFormeField();
}

class _BoxTextFormeField extends State<BoxTextFormeField> {
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
          obscureText: widget.isSenha && isPassword,
          decoration: InputDecoration(
            fillColor: AppColor.onPrimaryColor,
            filled: true,
            suffixIcon: widget.isSenha
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    icon: isPassword
                        ? const Icon(Icons.remove_red_eye_rounded)
                        : const Icon(Icons.remove_red_eye_outlined),
                  )
                : null,
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
