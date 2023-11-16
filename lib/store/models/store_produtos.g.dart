// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_produtos.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Produtos on _Produtos, Store {
  late final _$idAtom = Atom(name: '_Produtos.id', context: context);

  @override
  String get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(String value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  late final _$nomeAtom = Atom(name: '_Produtos.nome', context: context);

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  late final _$precoAtom = Atom(name: '_Produtos.preco', context: context);

  @override
  double get preco {
    _$precoAtom.reportRead();
    return super.preco;
  }

  @override
  set preco(double value) {
    _$precoAtom.reportWrite(value, super.preco, () {
      super.preco = value;
    });
  }

  late final _$corEImagemAtom =
      Atom(name: '_Produtos.corEImagem', context: context);

  @override
  ObservableList<CorEImagem> get corEImagem {
    _$corEImagemAtom.reportRead();
    return super.corEImagem;
  }

  @override
  set corEImagem(ObservableList<CorEImagem> value) {
    _$corEImagemAtom.reportWrite(value, super.corEImagem, () {
      super.corEImagem = value;
    });
  }

  late final _$tamanhoAtom = Atom(name: '_Produtos.tamanho', context: context);

  @override
  ObservableList<String> get tamanho {
    _$tamanhoAtom.reportRead();
    return super.tamanho;
  }

  @override
  set tamanho(ObservableList<String> value) {
    _$tamanhoAtom.reportWrite(value, super.tamanho, () {
      super.tamanho = value;
    });
  }

  late final _$avaliacaoAtom =
      Atom(name: '_Produtos.avaliacao', context: context);

  @override
  double get avaliacao {
    _$avaliacaoAtom.reportRead();
    return super.avaliacao;
  }

  @override
  set avaliacao(double value) {
    _$avaliacaoAtom.reportWrite(value, super.avaliacao, () {
      super.avaliacao = value;
    });
  }

  late final _$isFavoritoAtom =
      Atom(name: '_Produtos.isFavorito', context: context);

  @override
  bool get isFavorito {
    _$isFavoritoAtom.reportRead();
    return super.isFavorito;
  }

  @override
  set isFavorito(bool value) {
    _$isFavoritoAtom.reportWrite(value, super.isFavorito, () {
      super.isFavorito = value;
    });
  }

  @override
  String toString() {
    return '''
id: ${id},
nome: ${nome},
preco: ${preco},
corEImagem: ${corEImagem},
tamanho: ${tamanho},
avaliacao: ${avaliacao},
isFavorito: ${isFavorito}
    ''';
  }
}
