import 'package:flutter/material.dart';

import '../models/coffee.dart';

class CoffeeTile extends StatelessWidget {
  void Function()? onPressed;
  final Coffee coffee;
  final Icon icon;
  CoffeeTile(
      {super.key,
      required this.coffee,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12.0),
      ),
      margin: const EdgeInsets.only(bottom: 10.0),
      padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
      child: ListTile(
          title: Text(coffee.name),
          subtitle: Text(coffee.price),
          leading: Image.asset(coffee.imagePath),
          trailing: IconButton(onPressed: onPressed, icon: icon)),
    );
  }
}
