// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cor_e_imagem.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CorEImagem on _CorEImagem, Store {
  late final _$nomeAtom = Atom(name: '_CorEImagem.nome', context: context);

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

  late final _$corAtom = Atom(name: '_CorEImagem.cor', context: context);

  @override
  Color get cor {
    _$corAtom.reportRead();
    return super.cor;
  }

  @override
  set cor(Color value) {
    _$corAtom.reportWrite(value, super.cor, () {
      super.cor = value;
    });
  }

  late final _$imagemAtom = Atom(name: '_CorEImagem.imagem', context: context);

  @override
  String get imagem {
    _$imagemAtom.reportRead();
    return super.imagem;
  }

  @override
  set imagem(String value) {
    _$imagemAtom.reportWrite(value, super.imagem, () {
      super.imagem = value;
    });
  }

  @override
  String toString() {
    return '''
nome: ${nome},
cor: ${cor},
imagem: ${imagem}
    ''';
  }
}
