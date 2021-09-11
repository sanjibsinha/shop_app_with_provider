import 'package:flutter/material.dart';

class AllPage extends StatelessWidget {
  const AllPage({Key? key}) : super(key: key);
  static const routename = '/all-keys';

  @override
  Widget build(BuildContext context) {
    final student = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'All Students',
          style: TextStyle(
            fontFamily: 'Schuyler',
            fontSize: 30.0,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Number of Students $student',
          style: const TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
