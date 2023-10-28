import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'store_produtos.g.dart';

// ignore: library_private_types_in_public_api
class Produtos = _Produtos with _$Produtos;

abstract class _Produtos with Store {
  @observable
  String id;

  @observable
  String nome;

  @observable
  ObservableList<String> imagem;

  @observable
  double preco;

  @observable
  ObservableList<Color> cores;

  @observable
  ObservableList<String> tamanho;

  @observable
  double avaliacao;

  @observable
  bool isFavorito;
  _Produtos({
    required this.id,
    required this.nome,
    required this.imagem,
    required this.preco,
    required this.cores,
    required this.tamanho,
    required this.avaliacao,
    required this.isFavorito,
  });
}
