import 'package:flutter/material.dart';
import '../../constants.dart';
import 'tabs/explore/explore_tab.dart';
import 'tabs/grocery/grocery_tab.dart';
import 'tabs/recipes/recipes_tab.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
 
  final tabs = [
    RecipesTab(),
    ExploreTab(),
    GroceryTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Center(
          child: tabs.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: kBackgroundColor,
          selectedItemColor: kSecondaryColor,
          unselectedItemColor: kSecondaryColor.withOpacity(.60),
          selectedFontSize: 11,
          unselectedFontSize: 11,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              label: 'Recipes',
              icon: Icon(Icons.restaurant),
            ),
            BottomNavigationBarItem(
              label: 'Explore',
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: 'Grocery',
              icon: Icon(Icons.menu_book),
            ),
          ],
        ),
      ),
    );
  }
}