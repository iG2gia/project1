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

List<Product> productsMan = [
  Product(
    id: 1,
    title: "Office Code",
    price: 234,
    size: 12,
    description: "dummyText",
    image: "images/men/work/a1.png",
    color: Colors.white,
    categorie: "vacation",
    imagesList: [
      "images/men/work/a1.png",
      "images/men/work/a1.png",
      "images/men/work/a1.png",
    ], // Set the favorite value explicitly
  ),
  Product(
    id: 2,
    title: "Belt Bag",
    price: 234,
    size: 8,
    description: "dummyText",
    image: "images/men/every day/a1.png",
    color: Color(0xFFD3A984),
    categorie: "every day",
    imagesList: [
      "images/men/every day/a1.png",
      "images/men/every day/a1.png",
      "images/men/every day/a1.png",
    ],
  ),
  Product(
    id: 3,
    title: "Hang Top",
    price: 234,
    size: 10,
    description: "dummyText",
    image: "images/men/hit_up/a1.png",
    color: Color(0xFF989493),
    categorie: "ad",
    imagesList: [
      "images/men/hit_up/a1.png",
      "images/men/hit_up/a1.png",
      "images/men/hit_up/a1.png",
    ],
  ),
  Product(
    id: 4,
    title: "Old Fashion",
    price: 234,
    size: 11,
    description: "dummyText",
    image: "images/men/hit_up/a1.png",
    color: Color(0xFFE6B398),
    categorie: "vacation",
    imagesList: [
      "images/men/hit_up/a1.png",
      "images/men/hit_up/a1.png",
      "images/men/hit_up/a1.png",
    ],
  ),
  Product(
    id: 5,
    title: "Office Code",
    price: 234,
    size: 12,
    description: "dummyText",
    image: "images/men/hit_up/a1.png",
    color: Color(0xFFFB7883),
    categorie: "vaadaz",
    imagesList: [
      "images/men/hit_up/a1.png",
      "images/men/hit_up/a1.png",
      "images/men/hit_up/a1.png",
    ],
  ),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: "dummyText",
    image: "images/men/hit_up/a1.png",
    color: Color(0xFFAEAEAE),
    categorie: "vacation",
    imagesList: [
      "images/men/hit_up/a1.png",
      "images/men/hit_up/a1.png",
      "images/men/hit_up/a1.png",
    ],
  ),
];
