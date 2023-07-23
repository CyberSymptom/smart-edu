import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final String title;
  final String Location;
  final String image;

  CartItem({
    required this.id,
    required this.title,
    required this.Location,
    required this.image,
  });
}

class CardProvider with ChangeNotifier {
  List<CartItem> _list = [
    CartItem(
        id: "c1",
        title: "Dew-Pro Education",
        Location: "Tashkent",
        image:
            "https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"),
    CartItem(
        id: "c2",
        title: "IT Park",
        Location: "Samarqand",
        image: "https://images.unsplash.com/photo-1471039497385-b6d6ba609f9c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"),
    CartItem(
        id: "c2",
        title: "Smart-Edu",
        Location: "Termiz",
        image: "https://media.istockphoto.com/id/1398625179/photo/glass-window-building-of-new-office-space.jpg?s=1024x1024&w=is&k=20&c=tmAbOHMJ8GmaEI96c4SNjD7PlLPitYJ18-kqfj6afkE="),

         CartItem(
        id: "c2",
        title: "Smart-Edu",
        Location: "Termiz",
        image: "https://images.unsplash.com/photo-1470723710355-95304d8aece4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"),
  ];
  List<CartItem> get list {
    return [..._list];
  }

  void addProducts(){
    notifyListeners();
  }
}
