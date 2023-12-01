import 'package:flutter/material.dart';

import '../config/style/app_style.dart';

class BoxTextFormeField extends StatefulWidget {
  final String text;
  final String hintText;
  final bool isSenha;
  final Color borderColor;

  const BoxTextFormeField(
      {required this.borderColor,
      required this.isSenha,
      required this.text,
      required this.hintText,
      super.key});
  @override
  State<BoxTextFormeField> createState() => _BoxTextFormeField();
}

class _BoxTextFormeField extends State<BoxTextFormeField> {
  bool seePassword = false;
  @override
  Widget build(BuildContext context) {
    final (_, width) = AppStyle.screenSize(context);
    return SizedBox(
      height: width * .13,
      width: width,
      child: TextFormField(
        cursorColor: const Color(0xFF696969),
        obscureText: widget.isSenha & !seePassword,
        decoration: InputDecoration(
          suffixIcon: widget.isSenha
              ? InkWell(
                  onTap: () {
                    setState(() {
                      seePassword = !seePassword;
                    });
                  },
                  child: seePassword
                      ? const Icon(
                          Icons.remove_red_eye_rounded,
                          color: Color(0xFF696969),
                        )
                      : const Icon(
                          Icons.remove_red_eye_outlined,
                          color: Color(0xFF696969),
                        ),
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
    );
  }
}
