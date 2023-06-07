

import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                color: Colors.grey[300],
                child: Center(
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 48.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            buildButtonRow(['7', '8', '9', '/']),
            SizedBox(height: 16.0),
            buildButtonRow(['4', '5', '6', '*']),
            SizedBox(height: 16.0),
            buildButtonRow(['1', '2', '3', '-']),
            SizedBox(height: 16.0),
            buildButtonRow(['0', '.', '=', '+']),
          ],
        ),
      ),
    );
  }

  Widget buildButtonRow(List<String> buttons) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: buttons
          .map((button) => Expanded(
        child:  RaisedButton(
          onPressed: () {
            // TODO: Handle button press
          },
          child: Text(
            button,
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ))
          .toList(),
    );
  }
}

RaisedButton({required  Function() onPressed, required Text child}) {
}
