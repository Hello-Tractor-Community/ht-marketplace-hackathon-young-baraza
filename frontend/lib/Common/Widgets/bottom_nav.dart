import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tractor/Screens/Cart/cart_page.dart';
import 'package:tractor/Screens/Chat/chats.dart';
import 'package:tractor/Screens/Home/home_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int myCurrentIndex = 0;
  List pages = const [
    HomePage(),
    CartPage(),
    Chats(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xff006400),
        unselectedItemColor: const Color(0xff004b23),
        showUnselectedLabels: true,
        iconSize: 28,
        selectedFontSize: 12,
        currentIndex: myCurrentIndex,
        backgroundColor: const Color(0xfff5f5f5),
        useLegacyColorScheme: false,
        onTap: (int index) {
          setState(() {
            myCurrentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color(0xfff5f5f5),
            icon: Icon(
              Iconsax.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xfff5f5f5),
            icon: Icon(
              Iconsax.shopping_bag,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xfff5f5f5),
            icon: Icon(
              Iconsax.messages_2,
            ),
            label: 'Chat',
          ),
        ],
      ),
      body: pages[myCurrentIndex],
    );
  }
}
