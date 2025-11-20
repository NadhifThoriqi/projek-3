import 'package:flutter/material.dart';

// stl
class Detail extends StatelessWidget {
  const Detail({super.key, required this.prodi, });

  final String prodi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman detail")),
      body: Center(child: Text("Hallo")),
    );
  }
}
