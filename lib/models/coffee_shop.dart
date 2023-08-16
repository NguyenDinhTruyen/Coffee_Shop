import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier{
  //coffee for sale list
  final List<Coffee> _shop = [
    // black
    Coffee(
      name: 'Long Black',
      price: "10.000",
      imagePath: 'assets/images/black.png',
    ),
    //latte
    Coffee(
      name: 'Latte',
      price: "30.000",
      imagePath: 'assets/images/latte.png',
    ),
    //coffee
    Coffee(
      name: 'Coffee Espresso',
      price: "15.000",
      imagePath: 'assets/images/coffee.png',
    ),

    //bubble-tea
    Coffee(
      name: 'Bubble-tea',
      price: "50.000",
      imagePath: 'assets/images/bubble-tea.png',
    ),
  ];
  //user cart
  List<Coffee> _userCart = [];

  //get coffee list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
