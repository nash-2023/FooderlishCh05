import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/models.dart';
import 'screens/explore_screen.dart';
import 'screens/grocery_screen.dart';
import 'screens/recipes_screen.dart';

class Home extends StatelessWidget {
  static List<Widget> pages = <Widget>[
    const ExploreScreen(),
    RecipesScreen(),
    const GroceryScreen(),
  ];
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final tabManager = Provider.of<TabManager>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      // body: pages[_selectedIndex],
      body: IndexedStack(
        index: tabManager.selectedTab,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(
          context,
        ).textSelectionTheme.selectionColor,
        currentIndex: tabManager.selectedTab,
        onTap: Provider.of<TabManager>(
          context,
          listen: false,
        ).goToTab,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Recipes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'To Buy',
          ),
        ],
      ),
    );
  }
}
