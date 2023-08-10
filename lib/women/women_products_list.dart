import 'package:flutter/material.dart';

class Product {
  final String image, title, description, categorie;
  final int size, id;
  final Color color;
  final double price;
  final List imagesList;

  Product(
      {required this.id,
      required this.title,
      required this.price,
      required this.size,
      required this.description,
      required this.image,
      required this.color,
      required this.categorie,
      required this.imagesList});
}

List<Product> products = [
  Product(
    id: 1,
    title: "Office Code",
    price: 234.0,
    size: 12,
    description: "dummyText",
    image: "images/women/vacation/cv.png",
    color: Color(0xFFF1F8E9),
    categorie: "vacation",
    imagesList: [
      "images/women/vacation/cv.png",
      "images/women/vacation/cv.png",
      "images/women/vacation/cv.png",
    ],
  ),
  Product(
    id: 2,
    title: "Belt Bag",
    price: 234.0,
    size: 8,
    description: "dummyText",
    image: "images/women/vacation/nb.png",
    color: Color(0xFFD3A984),
    categorie: "every day",
    imagesList: [
      "images/women/vacation/nb.png",
      "images/women/vacation/nb.png",
      "images/women/vacation/nb.png",
    ],
  ),
  Product(
    id: 3,
    title: "Hang Top",
    price: 234.0,
    size: 10,
    description: "dummyText",
    image: "images/women/vacation/nh.png",
    color: Color(0xFF989493),
    categorie: "jewrelry",
    imagesList: [
      "images/women/vacation/nh.png",
      "images/women/vacation/nh.png",
      "images/women/vacation/nh.png",
    ],
  ),
  Product(
    id: 5,
    title: "Office Code",
    price: 234.0,
    size: 12,
    description: "dummyText",
    image: "images/women/vacation/pm.png",
    color: Color(0xFFFB7883),
    categorie: "vacation",
    imagesList: [
      "images/women/vacation/pm.png",
      "images/women/vacation/pm.png",
      "images/women/vacation/pm.png",
    ],
  ),
  Product(
    id: 6,
    title: "Office Code",
    price: 234.0,
    size: 12,
    description: "dummyText",
    image: "images/women/vacation/iaad.png",
    color: Color(0xFFAEAEAE),
    categorie: "vacation",
    imagesList: [
      "images/women/vacation/iaad.png",
      "images/women/vacation/iaad.png",
      "images/women/vacation/iaad.png",
    ],
  ),
  Product(
    id: 7,
    title: "",
    price: 234.0,
    size: 12,
    description: "dummyText",
    image: "images/women/vacation/qd.png",
    color: Color(0xFFAEAEAE),
    categorie: "vacation",
    imagesList: [
      "images/women/vacation/qd.png",
      "images/women/vacation/qd.png",
      "images/women/vacation/qd.png",
    ],
  ),
  Product(
    id: 8,
    title: "",
    price: 234.0,
    size: 12,
    description: "dummyText",
    image: "images/women/vacation/ji.png",
    color: Color(0xFFAEAEAE),
    categorie: "vacation",
    imagesList: [
      "images/women/vacation/ji.png",
      "images/women/vacation/ji.png",
      "images/women/vacation/ji.png",
    ],
  ),
  Product(
    id: 9,
    title: "",
    price: 234.0,
    size: 12,
    description: "dummyText",
    image: "images/women/vacation/fg.png",
    color: Color(0xFFAEAEAE),
    categorie: "vacation",
    imagesList: [
      "images/women/vacation/fg.png",
      "images/women/vacation/fg.png",
      "images/women/vacation/fg.png",
    ],
  ),
];
