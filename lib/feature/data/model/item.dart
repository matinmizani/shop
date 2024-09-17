import 'package:flutter/material.dart';

class Item {
  final String? name;
  final double price;
  final Color color;

  Item({required this.name, required this.price, required this.color});
}

final List<Item> catalogList = [
  Item(name: "Chocolate", price: 10, color: Colors.grey),
  Item(name: "Tea", price: 10, color: Colors.red),
  Item(name: "Bag", price: 100, color: Colors.pink),
  Item(name: "Bat", price: 150, color: Colors.blue),
  Item(name: "Sneakers", price: 150, color: Colors.green),
  Item(name: "Fish", price: 10, color: Colors.lightBlueAccent),
  Item(name: "jougars", price: 99, color: Colors.black),
  Item(name: "Meat", price: 40, color: Colors.lightBlueAccent),
  Item(name: "Laptop", price: 60, color: Colors.purple),
  Item(name: "Mobile", price: 900, color: Colors.brown),
  Item(name: "Desk", price: 45, color: Colors.yellow),
  Item(name: "Mouse", price: 34, color: Colors.indigo),
];
