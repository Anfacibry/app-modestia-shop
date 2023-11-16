import 'package:app_fashion_shop/config/style/estilo_do_app.dart';

import 'package:mobx/mobx.dart';

part 'store_login.g.dart';

// ignore: library_private_types_in_public_api
class StoreLogin = _StoreLogin with _$StoreLogin;

enum Contas { facebook, google, x, vazio }

abstract class _StoreLogin with Store {
  @observable
  bool loginEfetuado = false;

  @observable
  String conta = "";

  @observable
  bool lembrarSenha = false;

  @observable
  Contas contaAcessada = Contas.vazio;

  @observable
  String imagemRede = "";

  @action
  void isLembrarSenha(bool valor) {
    lembrarSenha = valor;
  }

  @action
  void tipoDeContaAcessada(Contas contas) {
    contaAcessada = contas;
    if (contaAcessada.index == 0) {
      imagemRede = EstyloApp.imagemFacebook;
      conta = "Facebook";
    }
    if (contaAcessada.index == 1) {
      imagemRede = EstyloApp.imagemGoogle;
      conta = "Google";
    }
    if (contaAcessada.index == 2) {
      imagemRede = EstyloApp.imagemX;
      conta = "X";
    }
  }
}
