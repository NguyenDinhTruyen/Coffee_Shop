import 'package:coffee_shop/components/coffee_tile.dart';
import 'package:coffee_shop/models/coffee.dart';
import 'package:coffee_shop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //remove item from cart
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);

    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Xóa thành công'),
      ),
    );
  }
  void payNow(){
    
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              //heading
              const Text(
                'Giỏ Hàng',
                style: TextStyle(fontSize: 20.0),
              ),
              const SizedBox(
                height: 25.0,
              ),

              //list of cart
              Expanded(
                child: ListView.builder(
                  itemCount: value.userCart.length,
                  itemBuilder: (context, index) {
                    //get individual cart items
                    Coffee eachCoffee = value.userCart[index];

                    //return coffee tile
                    return CoffeeTile(
                      coffee: eachCoffee,
                      onPressed: () => removeFromCart(eachCoffee),
                      icon: const Icon(Icons.delete),
                    );
                  },
                ),
              ),
              //nut thanh toan
              GestureDetector(
                onTap: payNow,
                child: Container(
                  padding: const EdgeInsets.all(25.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  child: const Center(
                      child: Text(
                    'Thanh toán ngay',
                    style: TextStyle(color: Colors.white),
                  )),
                  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
