import 'package:flutter/material.dart';
import 'package:mobile_cart4/home_screen.dart';
import 'package:mobile_cart4/pages/select_field_acc_page.dart';
import 'bottom_pages/account_page.dart';
import 'bottom_pages/add_to_cart.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {

  // this is for bottom navigation bar:
  int myIndex = 0;
  List<Widget> widgetList = const [
    HomeScreen(),
    AddToCart(),
    // AccountPage(),
    SelectField(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetList[myIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Add to cart',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account'
          ),
        ],
        currentIndex: myIndex,
        onTap: (int index){
          setState(() {
            myIndex = index;
          });
        },
      ),
    );
  }
}
