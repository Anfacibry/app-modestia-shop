import 'package:flutter/material.dart';

import '../config/style/estilo_do_app.dart';

class CaixaDeTexto extends StatefulWidget {
  final String texto;
  final String exTexto;
  final bool isSenha;
  final Color corBorda;
  final void Function()? fun;

  const CaixaDeTexto(
      {required this.corBorda,
      required this.isSenha,
      required this.texto,
      required this.exTexto,
      this.fun,
      super.key});
  @override
  State<CaixaDeTexto> createState() => _CaixaDeTextoState();
}

class _CaixaDeTextoState extends State<CaixaDeTexto> {
  bool verSenha = false;
  @override
  Widget build(BuildContext context) {
    final (_, largura) = EstyloApp.tamanhoTelaApp(context);
    return SizedBox(
      height: largura * .13,
      width: largura,
      child: TextFormField(
        onTap: widget.fun,
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
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              color: widget.corBorda,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              color: widget.corBorda,
            ),
          ),
        ),
      ),
    );
  }
}
