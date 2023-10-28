// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_dados.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Dados on _Dados, Store {
  Computed<int>? _$tamanhoListaComputed;

  @override
  int get tamanhoLista => (_$tamanhoListaComputed ??=
          Computed<int>(() => super.tamanhoLista, name: '_Dados.tamanhoLista'))
      .value;
  Computed<List<Produtos>>? _$listaDeProdutosComputed;

  @override
  List<Produtos> get listaDeProdutos => (_$listaDeProdutosComputed ??=
          Computed<List<Produtos>>(() => super.listaDeProdutos,
              name: '_Dados.listaDeProdutos'))
      .value;

  late final _$mapListaProdutosAtom =
      Atom(name: '_Dados.mapListaProdutos', context: context);

  @override
  Map<Selecao, List<Produtos>> get mapListaProdutos {
    _$mapListaProdutosAtom.reportRead();
    return super.mapListaProdutos;
  }

  @override
  set mapListaProdutos(Map<Selecao, List<Produtos>> value) {
    _$mapListaProdutosAtom.reportWrite(value, super.mapListaProdutos, () {
      super.mapListaProdutos = value;
    });
  }

  late final _$selecaoPegaAtom =
      Atom(name: '_Dados.selecaoPega', context: context);

  @override
  Selecao get selecaoPega {
    _$selecaoPegaAtom.reportRead();
    return super.selecaoPega;
  }

  @override
  set selecaoPega(Selecao value) {
    _$selecaoPegaAtom.reportWrite(value, super.selecaoPega, () {
      super.selecaoPega = value;
    });
  }

  late final _$_DadosActionController =
      ActionController(name: '_Dados', context: context);

  @override
  void selecionandoListaDeProdutos(Selecao selecao) {
    final _$actionInfo = _$_DadosActionController.startAction(
        name: '_Dados.selecionandoListaDeProdutos');
    try {
      return super.selecionandoListaDeProdutos(selecao);
    } finally {
      _$_DadosActionController.endAction(_$actionInfo);
    }
  }

  @override
  void adicionandoFavorito(Produtos produto) {
    final _$actionInfo = _$_DadosActionController.startAction(
        name: '_Dados.adicionandoFavorito');
    try {
      return super.adicionandoFavorito(produto);
    } finally {
      _$_DadosActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
mapListaProdutos: ${mapListaProdutos},
selecaoPega: ${selecaoPega},
tamanhoLista: ${tamanhoLista},
listaDeProdutos: ${listaDeProdutos}
    ''';
  }
}
