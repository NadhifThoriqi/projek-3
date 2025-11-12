import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorWidgetState();
}

class _CalculatorWidgetState extends State<CalculatorPage> {
  double hasil = 0.0;
  final TextEditingController angkaPertama = TextEditingController();
  final TextEditingController angkaKeDua = TextEditingController();

  void hitung(String operasi) {
    double angka1 = double.tryParse(angkaPertama.text) ?? 0.0;
    double angka2 = double.tryParse(angkaKeDua.text) ?? 0.0;

    setState(() {
      if (operasi == "*") {
        hasil = angka1 * angka2;
      } else if (operasi == "/") {
        hasil = angka1 / angka2;
      } else if (operasi == "+") {
        hasil = angka1 + angka2;
      } else if (operasi == "-") {
        hasil = angka1 - angka2;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator Page")),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: angkaPertama,
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: angkaKeDua,
              keyboardType: TextInputType.number,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    hitung("*");
                  },
                  child: Text("*"),
                ),
                ElevatedButton(
                  onPressed: () {
                    hitung("/");
                  },
                  child: Text("/"),
                ),
                ElevatedButton(
                  onPressed: () {
                    hitung("+");
                  },
                  child: Text("+"),
                ),
                ElevatedButton(
                  onPressed: () {
                    hitung("-");
                  },
                  child: Text("-"),
                ),
              ],
            ),
            Text(hasil.toString()),
          ],
        ),
      ),
    );
  }
}
