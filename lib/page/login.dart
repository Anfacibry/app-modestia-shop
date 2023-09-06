import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    ({double altura, double largura}) dimensao = (
      altura: MediaQuery.of(context).size.height,
      largura: MediaQuery.of(context).size.width,
    );
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: dimensao.altura,
          width: dimensao.largura,
          child: Padding(
            padding: EdgeInsets.only(
              right: dimensao.largura * .1,
              left: dimensao.largura * .1,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      "assets/image/logo.png",
                      height: dimensao.largura * .8,
                    ),
                  ),
                  const Text(
                    "Faça o login com a sua conta",
                    style: TextStyle(
                      color: Color(0xFF696969),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextFormField(
                    cursorColor: const Color(0xFF696969),
                    decoration: const InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Color(0xFF696969),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Color(0xFF696969),
                        ),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  TextFormField(
                    cursorColor: const Color(0xFF696969),
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Senha",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Color(0xFF696969),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Color(0xFF696969),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
