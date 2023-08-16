import 'package:coffee_shop/components/bottom_nav_bar.dart';
import 'package:coffee_shop/const.dart';
import 'package:coffee_shop/pages/cart_page.dart';
import 'package:coffee_shop/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //navigate bottom bar
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),
    //cart page
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
        ),
        backgroundColor: backgroundColor,
        bottomNavigationBar: MyBottomNavBar(
          onTabChange: (index) => navigateBottomBar(index),
        ),
        body: _pages[_selectedIndex],

        //drawer
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Image.asset('assets/images/latte.png'),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Trang chủ', style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const ListTile(
                  leading: Icon(Icons.help_outline_sharp),
                  title: Text('Chi tiết', style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              const SizedBox(height: 480.0),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const ListTile(
                  leading: Icon(Icons.logout_rounded),
                  title: Text('Logout', style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              
            ],
          ),
        ));
  }
}
