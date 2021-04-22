import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  Screen1({this.theResult, this.theResultText, this.theInterpretation});

  final double theResult;
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
                  Center(
                      child: Text(
                    theResultText.toUpperCase(),
                    style: TextStyle(
                      // color: Colors.blueAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Center(
                    child: Text(
                      theResult.toStringAsFixed(1),
                      style: TextStyle(
                          fontSize: 100.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ),
                  Center(
                    child: Text(
                      theInterpretation,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        // color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            flex: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
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
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
