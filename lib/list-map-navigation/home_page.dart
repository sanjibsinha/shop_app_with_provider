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

class Student {
  String id;
  String name;
  int age;

  Student({
    required this.id,
    required this.name,
    required this.age,
  });
}

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);

  /* final List _icons = [
    '1700',
    '1800',
    '1900',
  ]; */

  final List<Student> students = [
    Student(
      id: 's1',
      name: 'John',
      age: 10,
    ),
    Student(
      id: 's2',
      name: 'Json',
      age: 11,
    ),
    Student(
      id: 's3',
      name: 'Allen',
      age: 9,
    ),
    Student(
      id: 's4',
      name: 'Maria',
      age: 8,
    ),
    Student(
      id: 's5',
      name: 'Becky',
      age: 10,
    ),
    Student(
      id: 's6',
      name: 'John',
      age: 10,
    ),
    Student(
      id: 's7',
      name: 'Json',
      age: 11,
    ),
    Student(
      id: 's8',
      name: 'Allen',
      age: 9,
    ),
    Student(
      id: 's9',
      name: 'Maria',
      age: 8,
    ),
    Student(
      id: 's10',
      name: 'Becky',
      age: 10,
    ),
  ];

  Widget _buildIcons(BuildContext context, int index) {
    final List x = students.asMap().entries.map((e) => e.key).toList();
    final int y = x.length;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          AllPage.routename,
          arguments: y,
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
          '$index',
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
      body: Wrap(
        children: students
            .asMap()
            .entries
            .map((MapEntry map) => _buildIcons(context, map.key))
            .toList(),
      ),
    );
  }
}
