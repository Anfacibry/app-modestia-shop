// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_login.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StoreLogin on _StoreLogin, Store {
  late final _$contaAtom = Atom(name: '_StoreLogin.conta', context: context);

  @override
  String get conta {
    _$contaAtom.reportRead();
    return super.conta;
  }

  @override
  set conta(String value) {
    _$contaAtom.reportWrite(value, super.conta, () {
      super.conta = value;
    });
  }

  late final _$lembrarSenhaAtom =
      Atom(name: '_StoreLogin.lembrarSenha', context: context);

  @override
  bool get lembrarSenha {
    _$lembrarSenhaAtom.reportRead();
    return super.lembrarSenha;
  }

  @override
  set lembrarSenha(bool value) {
    _$lembrarSenhaAtom.reportWrite(value, super.lembrarSenha, () {
      super.lembrarSenha = value;
    });
  }

  late final _$contaAcessadaAtom =
      Atom(name: '_StoreLogin.contaAcessada', context: context);

  @override
  Contas get contaAcessada {
    _$contaAcessadaAtom.reportRead();
    return super.contaAcessada;
  }

  @override
  set contaAcessada(Contas value) {
    _$contaAcessadaAtom.reportWrite(value, super.contaAcessada, () {
      super.contaAcessada = value;
    });
  }

  late final _$imagemRedeAtom =
      Atom(name: '_StoreLogin.imagemRede', context: context);

  @override
  String get imagemRede {
    _$imagemRedeAtom.reportRead();
    return super.imagemRede;
  }

  @override
  set imagemRede(String value) {
    _$imagemRedeAtom.reportWrite(value, super.imagemRede, () {
      super.imagemRede = value;
    });
  }

  late final _$_StoreLoginActionController =
      ActionController(name: '_StoreLogin', context: context);

  @override
  void isLembrarSenha(bool valor) {
    final _$actionInfo = _$_StoreLoginActionController.startAction(
        name: '_StoreLogin.isLembrarSenha');
    try {
      return super.isLembrarSenha(valor);
    } finally {
      _$_StoreLoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void tipoDeContaAcessada(Contas contas) {
    final _$actionInfo = _$_StoreLoginActionController.startAction(
        name: '_StoreLogin.tipoDeContaAcessada');
    try {
      return super.tipoDeContaAcessada(contas);
    } finally {
      _$_StoreLoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
conta: ${conta},
lembrarSenha: ${lembrarSenha},
contaAcessada: ${contaAcessada},
imagemRede: ${imagemRede}
    ''';
  }
}
