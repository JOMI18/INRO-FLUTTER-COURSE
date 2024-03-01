import 'package:flutter/material.dart';



class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  int _currentStep = 0;

  final List<String> _steps = [
    'Step 1: Personal Details',
    'Step 2: Account Setup',
    'Step 3: Additional Information',
    'Step 4: Confirmation',
  ];

  void _nextStep() {
    setState(() {
      if (_currentStep < _steps.length - 1) {
        _currentStep++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_steps[_currentStep]),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: LinearProgressIndicator(
            value: (_currentStep + 1) / _steps.length,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Step ${_currentStep + 1} Content',
              style: TextStyle(fontSize: 24.0),
            ),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: _nextStep,
            child: Text(
              _currentStep == _steps.length - 1 ? 'Finish' : 'Continue',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}
