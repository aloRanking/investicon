import 'package:flutter/material.dart';

class DepositPage extends StatelessWidget {
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
          child: Column(
            children: <Widget>[
              Image.asset('images/investment.png',
              width: 50.0,
              height: 50.0,),
              Center(
                child: Text('Gimme Money',
                textAlign: TextAlign.center,
                ),
              ),
            ],
          ),

                  ),
      ),
    );
  }
}

