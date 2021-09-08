import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../controllers/cyber_controller.dart';
import '../controllers/exclusive_weapon_controller.dart';
import '../controllers/top_battle_controller.dart';
import '../views/about_all_wars.dart';

import 'all_wars.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTab = 0;

  final List _icons = [
    '1700',
    '1800',
    '1900',
  ];

  Widget _buildIcons(int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AllWars()),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10.0),
        width: 80.0,
        height: 40.0,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.00)),
          boxShadow: [
            BoxShadow(
              color: Colors.red,
              blurRadius: 4.00,
              spreadRadius: 2.00,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.yellow,
              Colors.white,
            ],
          ),
        ),
        child: Text(
          '${_icons[index]}',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 25.00,
            fontFamily: 'Trajan Pro',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(32),
          children: <Widget>[
            Text(
              'Welcome to Modern War History!',
              style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Anton',
                  foreground: Paint()
                    ..color = Colors.blue
                    ..strokeWidth = 1.0
                    ..style = PaintingStyle.stroke),
            ),
            const SizedBox(
              height: 20.00,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map((MapEntry map) => _buildIcons(map.key))
                  .toList(),
            ),
            const SizedBox(
              height: 20.00,
            ),
            TopBattleController(),
            const SizedBox(
              height: 20.00,
            ),
            WeaponController(),
            const SizedBox(
              height: 20.00,
            ),
            CyberController(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.00,
              backgroundColor: Colors.lightBlueAccent,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.00,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_searching,
              size: 30.00,
            ),
            label: 'Location',
          ),
        ],
      ),
    );
  }
}
