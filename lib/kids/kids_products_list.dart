import 'package:flutter/material.dart';

class Product {
  final String image, title, description, categorie;
  final int size, id;
  final Color color;
  final double price;
  final List imagesList;
  Product(
      {required this.id,
      required this.image,
      required this.title,
      required this.price,
      required this.description,
      required this.size,
      required this.color,
      required this.categorie,
      required this.imagesList});
}

List<Product> productsKids = [
  Product(
    id: 1,
    title: "addaad",
    price: 30,
    size: 12,
    description: "dummyText",
    image: "images/kids/tween girl/a2.png",
    color: Colors.white,
    categorie: "tween girl",
    imagesList: [
      "images/kids/tween girl/a2.png",
      "images/kids/tween girl/a2.png",
      "images/kids/tween girl/a2.png",
    ], // Set the favorite value explicitly
  ),
  Product(
    id: 2,
    title: "Belt Bag",
    price: 234,
    size: 8,
    description: "dummyText",
    image: "images/kids/baby boy/a2.png",
    color: Color(0xFFD3A984),
    categorie: "baby boy",
    imagesList: [
      "images/kids/baby boy/a2.png",
      "images/kids/baby boy/a2.png",
      "images/kids/baby boy/a2.png",
    ],
  ),
  Product(
    id: 3,
    title: "ezfa",
    price: 99,
    size: 8,
    description: "dummyText",
    image: "images/kids/baby girl/a2.png",
    color: Color(0xFF989493),
    categorie: "baby girl",
    imagesList: [
      "images/kids/baby girl/a2.png",
      "images/kids/baby girl/a2.png",
      "images/kids/baby girl/a2.png",
    ],
  ),
];
