// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ['Strewberry', '5.10', 'assets/pngegg.png', Colors.red],
    ['PineApple', '4.12', 'assets/pngegg (5).png', Colors.brown],
    ['Green Orange', '4.17', 'assets/pngegg (2).png', Colors.green],
    ['Banana', '3.18', 'assets/pngegg (4).png', Colors.yellow],
    ['Guava', '4.15', 'assets/pngegg (6).png', Colors.pink],
    ['Apple', '4.49', 'assets/pngegg (7).png', Colors.red],
  ];

  final List _cartItems = [];
  get shopItems => _shopItems;
  get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemfromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotalPrice() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
