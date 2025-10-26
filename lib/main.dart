import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Measures Converter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const ConverterScreen(),
    );
  }
}

class ConverterScreen extends StatefulWidget {
  const ConverterScreen({super.key});

  @override
  State<ConverterScreen> createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  String _fromUnit = 'miles';
  final Map<String, String> _toUnits = {
    'miles': 'kilometers',
    'kilograms': 'pounds',
  };
  final Map<String, double> _conversionFactors = {
    'miles': 1.60934, // miles to kilometers
    'kilograms': 2.20462, // kilograms to pounds
  };
  double _value = 0.0;
  double _result = 0.0;
  final TextEditingController _valueController = TextEditingController();

  void _convert() {
    setState(() {
      _result = _value * _conversionFactors[_fromUnit]!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Measures Converter'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Value'),
            TextField(
              controller: _valueController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onChanged: (value) {
                _value = double.tryParse(value) ?? 0.0;
              },
            ),
            const SizedBox(height: 16),
            const Text('From'),
            DropdownButton<String>(
              value: _fromUnit,
              isExpanded: true,
              items: ['miles', 'kilograms']
                  .map((unit) => DropdownMenuItem<String>(
                        value: unit,
                        child: Text(unit),
                      ))
                  .toList(),
              onChanged: (newUnit) {
                setState(() {
                  _fromUnit = newUnit!;
                  _result = 0.0; // Reset result on unit change
                });
              },
            ),
            const SizedBox(height: 16),
            const Text('To'),
            Text(_toUnits[_fromUnit]!),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _convert,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Convert'),
            ),
            const SizedBox(height: 16),
            if (_result > 0)
              Text(
                '$_value $_fromUnit are ${_result.toStringAsFixed(4)} ${_toUnits[_fromUnit]}',
              ),
          ],
        ),
      ),
    );
  }
}
