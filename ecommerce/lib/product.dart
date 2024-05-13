import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;
  final int noOfitems;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 4.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
    required this.noOfitems,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
      id: 1,
      images: [
        "images/videoimage.jpeg",
        "images/videoimage1.jpeg",
        "images/videoimage2.jpeg",
        "images/videoimage3.jpeg",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Wireless Controller for PS4™",
      price: 64.99,
      description: description,
      rating: 4.8,
      isFavourite: true,
      isPopular: true,
      noOfitems: 1),
  Product(
      id: 2,
      images: [
        "images/trackimage.jpeg",
        "images/trackimage2.jpeg",
        "images/track1.jpeg"
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Nike Sport White - Man Pant",
      price: 50.5,
      description: description,
      rating: 4.1,
      isPopular: true,
      isFavourite: true,
      noOfitems: 2),
  Product(
      id: 3,
      images: [
        "images/shoes.jpeg",
        "images/shoe4.jpeg",
        "images/shoeimage2.jpeg",
        "images/shoes.jpeg",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Gloves XC Omega - Polygon",
      price: 36.55,
      description: description,
      rating: 4.1,
      isFavourite: true,
      isPopular: true,
      noOfitems: 3),
  Product(
      id: 4,
      images: [
        "images/helmet.jpeg",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Logitech Head",
      price: 20.20,
      description: description,
      rating: 4.1,
      isFavourite: true,
      noOfitems: 4),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
