import 'package:demo/screens/account/account.dart';
import 'package:flutter/material.dart';
import 'package:demo/screens/cart/cart.dart';

class NavBottomApp extends StatefulWidget {
  const NavBottomApp({super.key});

  @override
  State<NavBottomApp> createState() => _NavBottomAppState();
}

class _NavBottomAppState extends State<NavBottomApp> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Giỏ hàng',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Tải khoản',
          ),
        ],
      ),
      body: <Widget>[
        /// Cart page
        CartPage(),

        /// Account page
        AccountPage()
      ][currentPageIndex],
    );
  }
}
