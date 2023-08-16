import 'package:coffee_shop/const.dart';
import 'package:coffee_shop/pages/home_page.dart';
import 'package:flutter/material.dart';

class ScreenSaver extends StatelessWidget {
  const ScreenSaver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 50.0,
              ),
              Image.asset(
                'assets/images/latte.png',
                width: 500,
                height: 200,
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                'MIN Coffee',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                'Ngày hôm nay của bạn thế nào?',
                style: TextStyle(color: Colors.brown, fontSize: 20),
              ),
              const SizedBox(
                height: 50.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(25.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                  child: const Center(
                    child: Text(
                      'Vào shop',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
