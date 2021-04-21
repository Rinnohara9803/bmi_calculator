import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  Screen1({this.theResult, this.theResultText, this.theInterpretation});

  final String theResult;
  final String theResultText;
  final String theInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: Text(
                  'THE RESULT',
                  style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.black12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(child: Text(theResult)),
                  Center(child: Text(theResultText)),
                  Center(
                    child: Text(theInterpretation),
                  ),
                ],
              ),
            ),
            flex: 5,
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.black12,
            ),
            height: 80.0,
            width: double.infinity,
            child: Center(
              child: Text(
                'Re-Calculate',
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
