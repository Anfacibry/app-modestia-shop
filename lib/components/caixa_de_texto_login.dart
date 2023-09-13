import 'package:flutter/material.dart';

class CaixaDeTextoLogin extends StatefulWidget {
  final String texto;
  final String exTexto;
  final bool isSenha;
  const CaixaDeTextoLogin(
      {required this.isSenha,
      required this.texto,
      required this.exTexto,
      super.key});

  @override
  State<CaixaDeTextoLogin> createState() => _CaixaDeTextoLoginState();
}

class _CaixaDeTextoLoginState extends State<CaixaDeTextoLogin> {
  bool verSenha = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xFF696969),
      obscureText: widget.isSenha & !verSenha,
      decoration: InputDecoration(
        suffixIcon: widget.isSenha
            ? InkWell(
                onTap: () {
                  setState(() {
                    verSenha = !verSenha;
                  });
                },
                child: verSenha
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
        labelText: widget.texto,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintText: widget.exTexto,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(
            color: Color(0xFF696969),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(
            color: Color(0xFF696969),
          ),
        ),
      ),
    );
  }
}