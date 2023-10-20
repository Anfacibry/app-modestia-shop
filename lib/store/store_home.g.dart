// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_home.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StoreHome on _StoreHome, Store {
  late final _$selecaoVestidosAtom =
      Atom(name: '_StoreHome.selecaoVestidos', context: context);

  @override
  bool get selecaoVestidos {
    _$selecaoVestidosAtom.reportRead();
    return super.selecaoVestidos;
  }

  @override
  set selecaoVestidos(bool value) {
    _$selecaoVestidosAtom.reportWrite(value, super.selecaoVestidos, () {
      super.selecaoVestidos = value;
    });
  }

  late final _$selecaoBlusaAtom =
      Atom(name: '_StoreHome.selecaoBlusa', context: context);

  @override
  bool get selecaoBlusa {
    _$selecaoBlusaAtom.reportRead();
    return super.selecaoBlusa;
  }

  @override
  set selecaoBlusa(bool value) {
    _$selecaoBlusaAtom.reportWrite(value, super.selecaoBlusa, () {
      super.selecaoBlusa = value;
    });
  }

  late final _$selecaoSaiasAtom =
      Atom(name: '_StoreHome.selecaoSaias', context: context);

  @override
  bool get selecaoSaias {
    _$selecaoSaiasAtom.reportRead();
    return super.selecaoSaias;
  }

  @override
  set selecaoSaias(bool value) {
    _$selecaoSaiasAtom.reportWrite(value, super.selecaoSaias, () {
      super.selecaoSaias = value;
    });
  }

  late final _$selecaoBolsasAtom =
      Atom(name: '_StoreHome.selecaoBolsas', context: context);

  @override
  bool get selecaoBolsas {
    _$selecaoBolsasAtom.reportRead();
    return super.selecaoBolsas;
  }

  @override
  set selecaoBolsas(bool value) {
    _$selecaoBolsasAtom.reportWrite(value, super.selecaoBolsas, () {
      super.selecaoBolsas = value;
    });
  }

  late final _$_StoreHomeActionController =
      ActionController(name: '_StoreHome', context: context);

  @override
  void selecionandoAba(Selecao selecaoPega) {
    final _$actionInfo = _$_StoreHomeActionController.startAction(
        name: '_StoreHome.selecionandoAba');
    try {
      return super.selecionandoAba(selecaoPega);
    } finally {
      _$_StoreHomeActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selecaoVestidos: ${selecaoVestidos},
selecaoBlusa: ${selecaoBlusa},
selecaoSaias: ${selecaoSaias},
selecaoBolsas: ${selecaoBolsas}
    ''';
  }
}
