import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'cor_e_imagem.g.dart';

// ignore: library_private_types_in_public_api
class CorEImagem = _CorEImagem with _$CorEImagem;

abstract class _CorEImagem with Store {
  @observable
  String nome;
  @observable
  Color cor;
  @observable
  String imagem;
  _CorEImagem({required this.nome, required this.cor, required this.imagem});
}
