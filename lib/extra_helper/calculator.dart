import 'package:flutter/material.dart';

class CalculatorDialog extends StatefulWidget {
  const CalculatorDialog({Key? key}) : super(key: key);

  @override
  _CalculatorDialogState createState() => _CalculatorDialogState();
}

class _CalculatorDialogState extends State<CalculatorDialog> {
  String _inputValue = '';

  void _handleButtonPressed(String buttonText) {
    setState(() {
      
      if (buttonText == 'C') {
        _inputValue = '';
      } else if (buttonText == '=') {
        _inputValue = evalExpression(_inputValue);
      } 
      else if (buttonText == 'x') {
        _inputValue.length-1;
      }else {
        _inputValue += buttonText;
      }
    });
  }

  String evalExpression(String expression) {
    // Implement your expression evaluation logic here
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Calculator'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 30,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _inputValue,
                  style: const TextStyle(fontSize: 24),
                ),
                GestureDetector(
                  onTap: () {
                    _inputValue.length-1;
                  },
                  child: Container(
                    color: Colors.black,
                    child: Icon(Icons.close,color: Colors.white,)),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => _handleButtonPressed('7'),
                child: const Text('7'),
              ),
              ElevatedButton(
                onPressed: () => _handleButtonPressed('8'),
                child: const Text('8'),
              ),
              ElevatedButton(
                onPressed: () => _handleButtonPressed('9'),
                child: const Text('9'),
              ),
              ElevatedButton(
                onPressed: () => _handleButtonPressed('+'),
                child: const Text('+'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => _handleButtonPressed('4'),
                child: const Text('4'),
              ),
              ElevatedButton(
                onPressed: () => _handleButtonPressed('5'),
                child: const Text('5'),
              ),
              ElevatedButton(
                onPressed: () => _handleButtonPressed('6'),
                child: const Text('6'),
              ),
              ElevatedButton(
                onPressed: () => _handleButtonPressed('-'),
                child: const Text('-'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => _handleButtonPressed('1'),
                child: const Text('1'),
              ),
              ElevatedButton(
                onPressed: () => _handleButtonPressed('2'),
                child: const Text('2'),
              ),
              ElevatedButton(
                onPressed: () => _handleButtonPressed('3'),
                child: const Text('3'),
              ),
              ElevatedButton(
                onPressed: () => _handleButtonPressed('*'),
                child: const Text('*'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () => _handleButtonPressed('0'),
                child: const Text('0'),
              ),
              ElevatedButton(
                onPressed: () => _handleButtonPressed('.'),
                child: const Text('.'),
              ),
              ElevatedButton(
                onPressed: () => _handleButtonPressed('='),
                child: const Text('='),
              ),
              ElevatedButton(
                onPressed: () => _handleButtonPressed('/'),
                child: const Text('/'),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () => _handleButtonPressed('C'),
            child: const Text('C'),
          ),
        ],
      ),
    );
  }
}

