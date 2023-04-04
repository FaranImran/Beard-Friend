import 'package:flutter/material.dart';
import '../Navbar_Screens/Barbar_Shop.dart';
import '../Navbar_Screens/Beard_Contest.dart';
import '../Navbar_Screens/Home.dart';
import '../Creative_cuts.dart';
import '../Navbar_Screens/Shopping.dart';
import '../Navbar_Screens/profile.dart';
class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  int Index = 0;
  List<Widget>  widgetlist = [
    Homepage(),
    Barbar_shop(),
    contest(),
    shopping(),
    Profile(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 78,
        width: 428,
        child: BottomNavigationBar(
            selectedItemColor: Colors.white,
            backgroundColor: Colors.black26,
            showUnselectedLabels: true,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            type: BottomNavigationBarType.fixed,
           // backgroundColor: Colors.transparent,
            onTap: (index){
              setState(() {
                Index=index;
              });
            },
            currentIndex: Index,
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/img/icon logo.png")),
                  label: "Beard Coins"),
              BottomNavigationBarItem(icon: Icon(Icons.storefront), label: "Barbar Shop",),
              BottomNavigationBarItem(icon: Icon(Icons.wine_bar_outlined),label: " Contest"),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), label: "Shopping"),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile")
            ]
        ),
      ),
      body:  widgetlist[Index],
    );
  }
}
