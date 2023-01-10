

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart.dart';
import 'hom.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int currentindex = 0;
  List pages = [
    Page1(),
    Page2(),
  
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentindex],
      bottomNavigationBar: NavigationBar(
        height: 60,
        selectedIndex: currentindex,
        onDestinationSelected: (currentindex) =>
            setState(() => this.currentindex = currentindex),
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_checkout),
            selectedIcon: Icon(Icons.shopping_cart_checkout),
            label: 'Cart',
          ),
          NavigationDestination(
            icon: Icon(Icons.card_giftcard),
            selectedIcon: Icon(Icons.card_giftcard),
            label: 'Offers',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
