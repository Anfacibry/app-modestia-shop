import 'package:app_fashion_shop/store/store_home.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../models/store_produtos.dart';

part 'store_dados.g.dart';

// ignore: library_private_types_in_public_api
class Dados = _Dados with _$Dados;

abstract class _Dados with Store {
  @observable
  Map<Selecao, List<Produtos>> mapListaProdutos =
      ObservableMap<Selecao, List<Produtos>>.of(
    {
      Selecao.vestidos: [
        Produtos(
          id: "001",
          nome: "Bluende",
          imagem: ObservableList.of(["assets/image/vestidos/bluende.jpg"]),
          preco: 99.90,
          cores: ObservableList.of([Colors.blue]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.5,
          isFavorito: false,
        ),
        Produtos(
          id: "002",
          nome: "Casual Med",
          imagem: ObservableList.of(["assets/image/vestidos/casualMed.jpeg"]),
          preco: 150.50,
          cores: ObservableList.of([Colors.purple]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.8,
          isFavorito: false,
        ),
        Produtos(
          id: "003",
          nome: "Elegante",
          imagem: ObservableList.of(["assets/image/vestidos/elegante.png"]),
          preco: 200,
          cores: ObservableList.of([const Color.fromARGB(255, 189, 40, 29)]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.2,
          isFavorito: false,
        ),
        Produtos(
          id: "004",
          nome: "Lop",
          imagem: ObservableList.of([
            "assets/image/vestidos/lop001.jpeg",
            "assets/image/vestidos/lop002.jpeg",
          ]),
          preco: 140,
          cores: ObservableList.of([Colors.blue[900]!, Colors.green[900]!]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.7,
          isFavorito: false,
        ),
        Produtos(
          id: "005",
          nome: "Veste bin",
          imagem: ObservableList.of(["assets/image/vestidos/vestido02.jpeg"]),
          preco: 80,
          cores: ObservableList.of([Colors.blue[100]!]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.7,
          isFavorito: false,
        ),
        Produtos(
          id: "006",
          nome: "Veste conde flor",
          imagem: ObservableList.of(["assets/image/vestidos/vestido05.jpeg"]),
          preco: 80,
          cores: ObservableList.of([Colors.green[800]!]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4,
          isFavorito: false,
        ),
        Produtos(
          id: "006",
          nome: "Veste flor",
          imagem: ObservableList.of(["assets/image/vestidos/vestido06.jpeg"]),
          preco: 80,
          cores: ObservableList.of([Colors.blue[900]!]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4,
          isFavorito: false,
        ),
        Produtos(
          id: "007",
          nome: "Barbie",
          imagem: ObservableList.of(["assets/image/vestidos/barbie.jpeg"]),
          preco: 99.99,
          cores: ObservableList.of([Colors.pink[300]!]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 5,
          isFavorito: false,
        ),
        Produtos(
          id: "008",
          nome: "Meigo",
          imagem: ObservableList.of(["assets/image/vestidos/meigo.jpeg"]),
          preco: 140.90,
          cores: ObservableList.of([Colors.pink[300]!]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 5,
          isFavorito: false,
        ),
        Produtos(
          id: "009",
          nome: "Vestido Midi",
          imagem:
              ObservableList.of(["assets/image/vestidos/vestido_midi.jpeg"]),
          preco: 160.85,
          cores: ObservableList.of([Colors.pink[300]!]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 5,
          isFavorito: false,
        ),
      ],
      Selecao.blusas: [
        Produtos(
          id: "001",
          nome: "Blind elegante",
          imagem:
              ObservableList.of(["assets/image/blusas/blind_elegante.jpeg"]),
          preco: 85.60,
          cores: ObservableList.of([const Color.fromARGB(255, 33, 243, 68)]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.5,
          isFavorito: false,
        ),
        Produtos(
          id: "002",
          nome: "Blusa pink",
          imagem: ObservableList.of(["assets/image/blusas/blusa_pink.jpeg"]),
          preco: 150.50,
          cores: ObservableList.of([Colors.pink[300]!]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.8,
          isFavorito: false,
        ),
        Produtos(
          id: "003",
          nome: "Dealing",
          imagem: ObservableList.of(["assets/image/blusas/dealing.jpeg"]),
          preco: 160.95,
          cores: ObservableList.of([Colors.white]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.2,
          isFavorito: false,
        ),
        Produtos(
          id: "004",
          nome: "Elegante",
          imagem: ObservableList.of(["assets/image/blusas/elegante.jpeg"]),
          preco: 100.90,
          cores: ObservableList.of([Colors.purple]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.7,
          isFavorito: false,
        ),
        Produtos(
          id: "005",
          nome: "Karmani",
          imagem: ObservableList.of(["assets/image/blusas/karmani.jpeg"]),
          preco: 80,
          cores: ObservableList.of([Colors.green]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.7,
          isFavorito: false,
        ),
        Produtos(
          id: "006",
          nome: "Style Flash",
          imagem: ObservableList.of(["assets/image/blusas/style_flash.jpeg"]),
          preco: 95.60,
          cores: ObservableList.of([Colors.pink[300]!]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4,
          isFavorito: false,
        ),
      ],
      Selecao.saias: [
        Produtos(
          id: "001",
          nome: "Camp",
          imagem: ObservableList.of(["assets/image/saias/camp.png"]),
          preco: 190.60,
          cores: ObservableList.of([const Color.fromARGB(255, 175, 109, 10)]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.5,
          isFavorito: false,
        ),
        Produtos(
          id: "002",
          nome: "Elegant",
          imagem: ObservableList.of(["assets/image/saias/elegant.jpeg"]),
          preco: 95.85,
          cores: ObservableList.of([const Color.fromARGB(255, 248, 161, 31)]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.8,
          isFavorito: false,
        ),
        Produtos(
          id: "003",
          nome: "Saia Bluend",
          imagem: ObservableList.of(["assets/image/saias/saia_bluend.jpeg"]),
          preco: 99.99,
          cores: ObservableList.of([Colors.green]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.2,
          isFavorito: false,
        ),
        Produtos(
          id: "004",
          nome: "Saia Golme",
          imagem: ObservableList.of(["assets/image/saias/saia_golme.jpeg"]),
          preco: 85.45,
          cores: ObservableList.of([Colors.white]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.7,
          isFavorito: false,
        ),
        Produtos(
          id: "005",
          nome: "Saia Midi",
          imagem: ObservableList.of(["assets/image/saias/saia_midi.jpeg"]),
          preco: 80,
          cores: ObservableList.of([Colors.green]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.7,
          isFavorito: false,
        ),
        Produtos(
          id: "006",
          nome: "Saia Social",
          imagem: ObservableList.of(["assets/image/saias/saia_social.jpeg"]),
          preco: 209.99,
          cores: ObservableList.of([const Color.fromARGB(255, 175, 109, 10)]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4,
          isFavorito: false,
        ),
        Produtos(
          id: "007",
          nome: "Saind",
          imagem: ObservableList.of(["assets/image/saias/saind.jpeg"]),
          preco: 58.95,
          cores: ObservableList.of([Colors.white]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4,
          isFavorito: false,
        ),
      ],
      Selecao.bolsas: [
        Produtos(
          id: "001",
          nome: "Bag Bragmybag",
          imagem: ObservableList.of(["assets/image/bolsas/bag_bragmybag.jpeg"]),
          preco: 78.80,
          cores: ObservableList.of([Colors.white]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.5,
          isFavorito: false,
        ),
        Produtos(
          id: "002",
          nome: "Bag",
          imagem: ObservableList.of(["assets/image/bolsas/bag.jpeg"]),
          preco: 95.85,
          cores: ObservableList.of([const Color.fromARGB(255, 248, 161, 31)]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.8,
          isFavorito: false,
        ),
        Produtos(
          id: "003",
          nome: "Bolsa Slip",
          imagem: ObservableList.of(["assets/image/bolsas/bolsa_slip.jpeg"]),
          preco: 85.99,
          cores: ObservableList.of([Colors.white]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.2,
          isFavorito: false,
        ),
        Produtos(
          id: "004",
          nome: "Borboletas",
          imagem: ObservableList.of([
            "assets/image/bolsas/borboleta01.jpeg",
            "assets/image/bolsas/borboleta02.jpeg"
          ]),
          preco: 85.45,
          cores: ObservableList.of([Colors.pink[200]!, Colors.white]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.7,
          isFavorito: false,
        ),
        Produtos(
          id: "005",
          nome: "Crint",
          imagem: ObservableList.of(["assets/image/bolsas/crint.jpeg"]),
          preco: 80,
          cores: ObservableList.of([Colors.black]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.7,
          isFavorito: false,
        ),
        Produtos(
          id: "006",
          nome: "neve",
          imagem: ObservableList.of([
            "assets/image/bolsas/neve01.jpeg",
            "assets/image/bolsas/neve02.jpeg",
            "assets/image/bolsas/neve03.jpeg",
          ]),
          preco: 89.99,
          cores:
              ObservableList.of([Colors.white, Colors.orange, Colors.black12]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4,
          isFavorito: false,
        ),
        Produtos(
          id: "007",
          nome: "Slot",
          imagem: ObservableList.of(["assets/image/bolsas/slot.jpeg"]),
          preco: 58.95,
          cores: ObservableList.of([Colors.black12]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4,
          isFavorito: false,
        ),
      ],
    },
  );

  @observable
  Selecao selecaoPega = Selecao.vestidos;

  @computed
  int get tamanhoLista => mapListaProdutos[selecaoPega]!.length;

  @computed
  List<Produtos> get listaDeProdutos => mapListaProdutos[selecaoPega]!;

  @action
  void selecionandoListaDeProdutos(Selecao selecao) {
    selecaoPega = selecao;
  }

  @action
  void adicionandoFavorito(Produtos produto) {
    produto.isFavorito = !produto.isFavorito;
  }
}
