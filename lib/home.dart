import 'package:flutter/material.dart';
import 'package:uts/calculator.dart';
import 'package:uts/list_data.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => CalculatorPage()),
                );
              },
              child: Text("Menu Calculator"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ListDataPage()),
                );
              },
              child: Text("Menu List Data"),
            ),
          ],
        ),
      ),
    );
  }
}
