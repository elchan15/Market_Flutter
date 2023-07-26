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

  get shopItems => _shopItems;
}
