import 'package:flutter/material.dart';

void main() => runApp(TipApp());

class TipApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tip App',
      theme: ThemeData(primaryColor: Colors.purple),
      home: TipCalculator(),
    );
  }
}

class TipCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tip Calculator!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                initialValue: '100',
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  hintText: 'Enter the Bill Amount',
                  labelText: 'Bill Amount',
                ),
              ),
              TextFormField(
                initialValue: '20',
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter the Tip %',
                  labelText: 'Tip %',
                ),
              ),
              AwesomeText('Tip Amount: 20'),
              AwesomeText('Total Amount: 120'),
            ],
          ),
        ),
      ),
    );
  }
}

class AwesomeText extends StatelessWidget {
  final String text;

  AwesomeText(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Text(text.toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple)),
    );
  }
}
