import 'package:flutter/material.dart';

class InvestmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF002B4A),
      appBar: AppBar(
        title: Text('Deposit'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),

          height: 250.0,
          width: 300,
          child: Center(
            child: Text('Gimme Money',
              textAlign: TextAlign.center,
            ),
          ),

        ),
      ),
    );
  }
}
