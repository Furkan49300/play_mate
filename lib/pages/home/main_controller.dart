import 'package:flutter/material.dart';
import 'package:play_mate/pages/home/home.dart';



class MainController extends StatelessWidget {
  const MainController({super.key});

  @override
  Widget build(BuildContext context) {
    return const FooterBar();
  }
}

class FooterBar extends StatefulWidget {
  const FooterBar({super.key});

  @override
  State<FooterBar> createState() =>
      _FooterBarState();
}

class _FooterBarState
    extends State<FooterBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      'page catégories',
      style: optionStyle,
    ),
    Text(
      'page compte',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar:
      Container(
        child: Container(
        decoration: BoxDecoration(
        boxShadow: [
    BoxShadow(
    color:Colors.grey.withOpacity(0.2),
    spreadRadius: 5,
    blurRadius: 10)
    ],
    ),
    child:BottomNavigationBar(

        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Accueil',
            icon: Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: const Icon(
                  Icons.home,
                  size:40,
                  color:Colors.grey
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Catégories',
            icon: Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: const Icon(
                  Icons.sports_esports,
                  size:40,
                  color:Colors.grey
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Compte',
            icon: Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: const Icon(
                  Icons.person,
                  size:40,
                  color:Colors.grey
              ),
            ),
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    )));
  }
}
