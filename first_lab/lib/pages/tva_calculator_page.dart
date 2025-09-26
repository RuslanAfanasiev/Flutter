import 'package:flutter/material.dart';

class TvaCalculatorPage extends StatefulWidget {
  const TvaCalculatorPage({super.key});

  @override
  State<TvaCalculatorPage> createState() => _TvaCalculatorPageState();
}

class _TvaCalculatorPageState extends State<TvaCalculatorPage> {
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _tvaController = TextEditingController(text: "5");
  double? _finalPrice;

  void _calculatePrice() {
    setState(() {
      double priceWithoutTVA = double.tryParse(_priceController.text) ?? 0;
      double tvaPercent = double.tryParse(_tvaController.text) ?? 0;
      _finalPrice = priceWithoutTVA * (1 + tvaPercent / 100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculator TVA")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text("Introduceți prețul fără TVA:"),
            TextField(
              controller: _priceController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Ex: 100"),
            ),
            const SizedBox(height: 20),
            const Text("Introduceți procentul TVA:"),
            TextField(
              controller: _tvaController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Ex: 5"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculatePrice,
              child: const Text("Calculează prețul final"),
            ),
            const SizedBox(height: 20),
            if (_finalPrice != null)
              Text(
                "Preț final cu TVA: ${_finalPrice!.toStringAsFixed(2)}",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}
