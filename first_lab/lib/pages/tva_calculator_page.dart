import 'package:flutter/material.dart';

class TvaCalculatorPage extends StatefulWidget {
  const TvaCalculatorPage({super.key});

  @override
  State<TvaCalculatorPage> createState() => _TvaCalculatorPageState();
}

class _TvaCalculatorPageState extends State<TvaCalculatorPage> {
  final TextEditingController _priceController = TextEditingController();
  double _selectedTVA = 0.05;
  double? _finalPrice;

  void _calculatePrice() {
    setState(() {
      double priceWithoutTVA = double.tryParse(_priceController.text) ?? 0;
      _finalPrice = priceWithoutTVA * (1 + _selectedTVA);
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
            const Text("Selectați procentul TVA:"),
            DropdownButton<double>(
              value: _selectedTVA,
              items: const [
                DropdownMenuItem(value: 0.05, child: Text("5%")),
                DropdownMenuItem(value: 0.08, child: Text("8%")),
                DropdownMenuItem(value: 0.20, child: Text("20%")),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedTVA = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculatePrice,
              child: const Text("Calculează prețul final"),
            ),
            const SizedBox(height: 20),
            if (_finalPrice != null)
              Text("Preț final cu TVA: ${_finalPrice!.toStringAsFixed(2)}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
