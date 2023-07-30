import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of items sale
  final List _shopItems = [
    //[itemName, itemPrice, imagePath, color]
    ["Apple", "4.0", "lib/images/apple.png", Colors.red],
    ["mango", "4.0", "lib/images/mango.png", Colors.yellow],
    ["orange", "4.0", "lib/images/orange.png", Colors.orange],
    ["strawberry", "4.0", "lib/images/strawberry.png", Colors.pink],
  ];

  //list of cart items
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  //add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total price
  String calculalateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
