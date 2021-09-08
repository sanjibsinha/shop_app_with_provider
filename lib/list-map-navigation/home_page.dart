import 'package:flutter/material.dart';
import 'package:shop_app_with_provider/list-map-navigation/all_pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Map and Navigation',
      home: FirstPage(),
      routes: {
        AllPage.routename: (context) => const AllPage(),
      },
    );
  }
}

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);

  final List _icons = [
    '1700',
    '1800',
    '1900',
  ];

  Widget _buildIcons(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          AllPage.routename,
          arguments: index,
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
      appBar: AppBar(
        title: const Text('List, Map and Navigation'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _icons
            .asMap()
            .entries
            .map((MapEntry map) => _buildIcons(context, map.key))
            .toList(),
      ),
    );
  }
}
