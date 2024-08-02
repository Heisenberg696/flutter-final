import 'package:flutter/material.dart';
import 'package:minmalecommerce/models/product_model.dart';

class Shop extends ChangeNotifier {
//products for sale
  final List<Product> _shop = [
    Product(
        name: "Basket ball",
        price: 59.99,
        description:
        "Experience top-tier performance with our premium basketball, designed for optimal grip and durability on any court. Perfect for both indoor and outdoor play, it's the ideal choice for athletes of all levels.",
        imagePath: "assets/images/products/Basketball.png"),
    Product(
        name: "boots",
        price: 79.99,
        description: "Dominate the field with our high-performance football boots, engineered for speed and agility.",
        imagePath: "assets/images/products/boots.jpeg"),
    Product(
        name: "Dumbell",
        price: 129.99,
        description: "Build strength with our versatile dumbbell, featuring an ergonomic grip for comfort.",
        imagePath: "assets/images/products/dumbell.jpeg"),
    Product(
        name: "Football",
        price: 49.99,
        description:"Kick your game up a notch with our premium football, designed for precise control and durability.",
        imagePath: "assets/images/products/shoes.png"),
    Product(
        name: "Black Hoodie",
        price: 499.99,
        description:
            "Stylish Nike hoodie, available in medium and large sizes, perfect for embracing gym comfort while elevating your everyday style effortlessly.",
        imagePath: "assets/images/products/nike.png"),
    Product(
        name: "Tech Innovator",
        price: 499.99,
        description:
            "The Tech Innovator - perfect for tech enthusiasts, The Tech Innovator - perfect for tech enthusiasts",
        imagePath: "assets/images/products/blackhoodie.png"),
    Product(
        name: "shoes",
        price: 49.99,
        description:
            "Hit your stride with our running shoes, designed for maximum comfort and support",
        imagePath: "assets/images/products/shoes.png"),
    Product(
        name: "racket",
        price: 49.99,
        description:
            "Enhance your game with our high-performance tennis racket, offering superior control and power. ",
        imagePath: "assets/images/products/racket.png"),
  ];
//user cart
  List<Product> _cart = [];

//get products list
  List<Product> get shop => _shop;
//get user cart
  List<Product> get cart => _cart;

// add item to cart
  void addToCart({required Product item}) {
    _cart.add(item);
    notifyListeners();
  }

// remove  item from cart
  void removeFromCart({required Product item}) {
    _cart.remove(item);
    notifyListeners();
  }
}
