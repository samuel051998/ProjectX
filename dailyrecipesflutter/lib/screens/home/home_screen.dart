import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/topappbar.dart';
import 'tabs/explore/explore_tab.dart';
import 'tabs/grocery/grocery_tab.dart';
import 'tabs/profile/profile_tab.dart';
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
    ProfileTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: TopAppBar(),
        ),
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
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person),
            )
          ],
        ),
      ),
    );
  }
}