// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_home.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StoreHome on _StoreHome, Store {
  Computed<String>? _$imagemPropagandaComputed;

  @override
  String get imagemPropaganda => (_$imagemPropagandaComputed ??=
          Computed<String>(() => super.imagemPropaganda,
              name: '_StoreHome.imagemPropaganda'))
      .value;

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

  late final _$listaImagemAtom =
      Atom(name: '_StoreHome.listaImagem', context: context);

  @override
  ObservableList<String> get listaImagem {
    _$listaImagemAtom.reportRead();
    return super.listaImagem;
  }

  @override
  set listaImagem(ObservableList<String> value) {
    _$listaImagemAtom.reportWrite(value, super.listaImagem, () {
      super.listaImagem = value;
    });
  }

  late final _$indiceAtom = Atom(name: '_StoreHome.indice', context: context);

  @override
  int get indice {
    _$indiceAtom.reportRead();
    return super.indice;
  }

  @override
  set indice(int value) {
    _$indiceAtom.reportWrite(value, super.indice, () {
      super.indice = value;
    });
  }

  late final _$homeAtom = Atom(name: '_StoreHome.home', context: context);

  @override
  bool get home {
    _$homeAtom.reportRead();
    return super.home;
  }

  @override
  set home(bool value) {
    _$homeAtom.reportWrite(value, super.home, () {
      super.home = value;
    });
  }

  late final _$favoritoAtom =
      Atom(name: '_StoreHome.favorito', context: context);

  @override
  bool get favorito {
    _$favoritoAtom.reportRead();
    return super.favorito;
  }

  @override
  set favorito(bool value) {
    _$favoritoAtom.reportWrite(value, super.favorito, () {
      super.favorito = value;
    });
  }

  late final _$carrinhoAtom =
      Atom(name: '_StoreHome.carrinho', context: context);

  @override
  bool get carrinho {
    _$carrinhoAtom.reportRead();
    return super.carrinho;
  }

  @override
  set carrinho(bool value) {
    _$carrinhoAtom.reportWrite(value, super.carrinho, () {
      super.carrinho = value;
    });
  }

  late final _$perfilAtom = Atom(name: '_StoreHome.perfil', context: context);

  @override
  bool get perfil {
    _$perfilAtom.reportRead();
    return super.perfil;
  }

  @override
  set perfil(bool value) {
    _$perfilAtom.reportWrite(value, super.perfil, () {
      super.perfil = value;
    });
  }

  late final _$caixaDeTextoAtivadaAtom =
      Atom(name: '_StoreHome.caixaDeTextoAtivada', context: context);

  @override
  bool get caixaDeTextoAtivada {
    _$caixaDeTextoAtivadaAtom.reportRead();
    return super.caixaDeTextoAtivada;
  }

  @override
  set caixaDeTextoAtivada(bool value) {
    _$caixaDeTextoAtivadaAtom.reportWrite(value, super.caixaDeTextoAtivada, () {
      super.caixaDeTextoAtivada = value;
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
  void indicePego(int valor) {
    final _$actionInfo =
        _$_StoreHomeActionController.startAction(name: '_StoreHome.indicePego');
    try {
      return super.indicePego(valor);
    } finally {
      _$_StoreHomeActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selecionandoIcone(IconeSelecionado iconePego) {
    final _$actionInfo = _$_StoreHomeActionController.startAction(
        name: '_StoreHome.selecionandoIcone');
    try {
      return super.selecionandoIcone(iconePego);
    } finally {
      _$_StoreHomeActionController.endAction(_$actionInfo);
    }
  }

  @override
  void ativandoCaixaDeTexto() {
    final _$actionInfo = _$_StoreHomeActionController.startAction(
        name: '_StoreHome.ativandoCaixaDeTexto');
    try {
      return super.ativandoCaixaDeTexto();
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
selecaoBolsas: ${selecaoBolsas},
listaImagem: ${listaImagem},
indice: ${indice},
home: ${home},
favorito: ${favorito},
carrinho: ${carrinho},
perfil: ${perfil},
caixaDeTextoAtivada: ${caixaDeTextoAtivada},
imagemPropaganda: ${imagemPropaganda}
    ''';
  }
}
