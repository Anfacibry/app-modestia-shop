import 'package:app_fashion_shop/store/store_home.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

import '../models/image_color.dart';
import '../models/store_product.dart';

part 'storage_product.g.dart';

// ignore: library_private_types_in_public_api
class StorageProduct = _StorageProduct with _$StorageProduct;

abstract class _StorageProduct with Store {
  static Uuid uuid = const Uuid();
  @observable
  Map<Selection, List<Product>> mapListProduct =
      ObservableMap<Selection, List<Product>>.of(
    {
      Selection.vestidos: [
        Product(
          id: uuid.v6(),
          name: "Bluende",
          price: 99.90,
          imageColor: ObservableList.of([
            ImageColor(
                name: "azul",
                color: const Color.fromARGB(255, 7, 54, 92),
                image: "assets/image/vestidos/bluende.jpg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4.5,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Casual Med",
          price: 150.50,
          imageColor: ObservableList.of([
            ImageColor(
                name: "roxo",
                color: const Color.fromARGB(255, 101, 18, 116),
                image: "assets/image/vestidos/casualMed.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4.8,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Elegante",
          price: 200,
          imageColor: ObservableList.of([
            ImageColor(
                name: "vermelho",
                color: const Color.fromARGB(255, 129, 23, 16),
                image: "assets/image/vestidos/elegante.png")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4.2,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Lop",
          price: 140,
          imageColor: ObservableList.of([
            ImageColor(
                name: "azul",
                color: const Color.fromARGB(255, 7, 41, 94),
                image: "assets/image/vestidos/lop001.jpeg"),
            ImageColor(
                name: "verde",
                color: Colors.green[900]!,
                image: "assets/image/vestidos/lop002.jpeg"),
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4.7,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Veste bin",
          price: 80,
          imageColor: ObservableList.of([
            ImageColor(
                name: "azul marinho",
                color: Colors.blue[100]!,
                image: "assets/image/vestidos/vestido02.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4.7,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Veste conde flor",
          price: 80,
          imageColor: ObservableList.of([
            ImageColor(
                name: "verde",
                color: const Color.fromARGB(255, 17, 70, 20),
                image: "assets/image/vestidos/vestido05.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Veste flor",
          price: 80,
          imageColor: ObservableList.of([
            ImageColor(
                name: "azul escuro",
                color: const Color.fromARGB(255, 4, 18, 39),
                image: "assets/image/vestidos/vestido06.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Barbie",
          price: 99.99,
          imageColor: ObservableList.of([
            ImageColor(
                name: "roso",
                color: const Color.fromARGB(255, 223, 147, 172),
                image: "assets/image/vestidos/barbie.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 5,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Meigo",
          price: 140.90,
          imageColor: ObservableList.of([
            ImageColor(
                name: "roso",
                color: const Color.fromARGB(255, 231, 206, 215),
                image: "assets/image/vestidos/meigo.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 5,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Vestido Midi",
          price: 160.85,
          imageColor: ObservableList.of([
            ImageColor(
                name: "roso",
                color: const Color.fromARGB(255, 255, 255, 255),
                image: "assets/image/vestidos/vestido_midi.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 5,
          isFavorite: false,
          tackSize: "",
        ),
      ],
      Selection.blusas: [
        Product(
          id: uuid.v6(),
          name: "Blind elegante",
          price: 85.60,
          imageColor: ObservableList.of([
            ImageColor(
                name: "verde claro",
                color: const Color.fromARGB(255, 33, 243, 68),
                image: "assets/image/blusas/blind_elegante.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4.5,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Blusa pink",
          price: 150.50,
          imageColor: ObservableList.of([
            ImageColor(
                name: "roso",
                color: Colors.pink[300]!,
                image: "assets/image/blusas/blusa_pink.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4.8,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Dealing",
          price: 160.95,
          imageColor: ObservableList.of([
            ImageColor(
                name: "branco",
                color: Colors.white,
                image: "assets/image/blusas/dealing.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4.2,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Elegante",
          price: 100.90,
          imageColor: ObservableList.of([
            ImageColor(
                name: "roxo",
                color: Colors.purple,
                image: "assets/image/blusas/elegante.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4.7,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Karmani",
          price: 80,
          imageColor: ObservableList.of([
            ImageColor(
                name: "verde",
                color: Colors.green[800]!,
                image: "assets/image/blusas/karmani.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4.7,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Style Flash",
          price: 95.60,
          imageColor: ObservableList.of([
            ImageColor(
                name: "roso",
                color: Colors.pink[300]!,
                image: "assets/image/blusas/style_flash.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4,
          isFavorite: false,
          tackSize: "",
        ),
      ],
      Selection.saias: [
        Product(
          id: uuid.v6(),
          name: "Camp",
          price: 190.60,
          imageColor: ObservableList.of([
            ImageColor(
                name: "laranja escuro",
                color: const Color.fromARGB(255, 175, 109, 10),
                image: "assets/image/saias/camp.png"),
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4.5,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Elegant",
          price: 95.85,
          imageColor: ObservableList.of([
            ImageColor(
                name: "laranja",
                color: const Color.fromARGB(255, 248, 161, 31),
                image: "assets/image/saias/elegant.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4.8,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Saia Bluend",
          price: 99.99,
          imageColor: ObservableList.of([
            ImageColor(
                name: "verde",
                color: Colors.green[800]!,
                image: "assets/image/saias/saia_bluend.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4.2,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Saia Golme",
          price: 85.45,
          imageColor: ObservableList.of([
            ImageColor(
                name: "branco",
                color: Colors.white,
                image: "assets/image/saias/saia_golme.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4.7,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Saia Midi",
          price: 80,
          imageColor: ObservableList.of([
            ImageColor(
                name: "verde",
                color: Colors.green[800]!,
                image: "assets/image/saias/saia_midi.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4.7,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Saia Social",
          price: 209.99,
          imageColor: ObservableList.of([
            ImageColor(
                name: "laranja escuro",
                color: const Color.fromARGB(255, 175, 109, 10),
                image: "assets/image/saias/saia_social.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Saind",
          price: 58.95,
          imageColor: ObservableList.of([
            ImageColor(
                name: "branco",
                color: Colors.white,
                image: "assets/image/saias/saind.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4,
          isFavorite: false,
          tackSize: "",
        ),
      ],
      Selection.bolsas: [
        Product(
          id: uuid.v6(),
          name: "Bag Bragmybag",
          price: 78.80,
          imageColor: ObservableList.of([
            ImageColor(
                name: "branco",
                color: Colors.white,
                image: "assets/image/bolsas/bag_bragmybag.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4.5,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Bag",
          price: 95.85,
          imageColor: ObservableList.of([
            ImageColor(
                name: "laranja",
                color: const Color.fromARGB(255, 248, 161, 31),
                image: "assets/image/bolsas/bag.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4.8,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Bolsa Slip",
          price: 85.99,
          imageColor: ObservableList.of([
            ImageColor(
                name: "branco",
                color: Colors.white,
                image: "assets/image/bolsas/bolsa_slip.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4.2,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Borboletas",
          price: 85.45,
          imageColor: ObservableList.of([
            ImageColor(
                name: "rosa",
                color: Colors.pink[200]!,
                image: "assets/image/bolsas/borboleta01.jpeg"),
            ImageColor(
                name: "branco",
                color: Colors.white,
                image: "assets/image/bolsas/borboleta02.jpeg"),
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4.7,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Crint",
          price: 80,
          imageColor: ObservableList.of([
            ImageColor(
                name: "preto",
                color: Colors.black,
                image: "assets/image/bolsas/crint.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4.7,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "neve",
          price: 89.99,
          imageColor: ObservableList.of([
            ImageColor(
                name: "branco",
                color: Colors.white,
                image: "assets/image/bolsas/neve01.jpeg"),
            ImageColor(
                name: "laranja",
                color: Colors.orange,
                image: "assets/image/bolsas/neve02.jpeg"),
            ImageColor(
                name: "preto",
                color: Colors.black,
                image: "assets/image/bolsas/neve03.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4,
          isFavorite: false,
          tackSize: "",
        ),
        Product(
          id: uuid.v6(),
          name: "Slot",
          price: 58.95,
          imageColor: ObservableList.of([
            ImageColor(
                name: "preto",
                color: Colors.black,
                image: "assets/image/bolsas/slot.jpeg")
          ]),
          size: ObservableList.of(["P", "M", "G"]),
          valuation: 4,
          isFavorite: false,
          tackSize: "",
        ),
      ],
    },
  );
}
