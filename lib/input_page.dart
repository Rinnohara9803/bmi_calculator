import 'package:flutter/material.dart';
import 'reusableCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'constants.dart';
import 'screen1.dart';
import 'resultBrain.dart';

enum gender { male, female }

int theHeight = 120;
int userWeight = 20;
int userAge = 18;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onpress: () {
                      setState(() {
                        selectedGender = gender.male;
                      });
                    },
                    colour: selectedGender == gender.male
                        ? kactiveColour
                        : koriginalColour,
                    cardChild: ForIcon(
                      iconName: FontAwesomeIcons.mars,
                      textName: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onpress: () {
                      setState(() {
                        selectedGender = gender.female;
                      });
                    },
                    colour: selectedGender == gender.female
                        ? kactiveColour
                        : koriginalColour,
                    cardChild: ForIcon(
                      iconName: FontAwesomeIcons.venus,
                      textName: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: koriginalColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: ktextStyleChange,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        theHeight.toString(),
                        style: knumberStyleChange,
                      ),
                      Text('cm'),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.red,
                        inactiveTrackColor: Colors.greenAccent,
                        thumbColor: Colors.amberAccent,
                        overlayColor: Colors.white,
                        thumbShape: RoundSliderThumbShape()),
                    child: Slider(
                      value: theHeight.toDouble(),
                      min: 0.0,
                      max: 180.0,
                      onChanged: (double theNewHeight) {
                        setState(() {
                          theHeight = theNewHeight.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: koriginalColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight ( In Kg )',
                          style: ktextStyleChange,
                        ),
                        Text(
                          userWeight.toString(),
                          style: knumberStyleChange,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  userWeight++;
                                });
                              },
                              child: Icon(
                                Icons.arrow_circle_up,
                                size: 50.0,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  userWeight--;
                                });
                              },
                              child: Icon(
                                Icons.arrow_circle_down,
                                size: 50.0,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: koriginalColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: ktextStyleChange,
                        ),
                        Text(
                          userAge.toString(),
                          style: knumberStyleChange,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  userAge++;
                                });
                              },
                              child: Icon(
                                Icons.arrow_circle_up,
                                size: 50.0,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  userAge--;
                                });
                              },
                              child: Icon(
                                Icons.arrow_circle_down,
                                size: 50.0,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: theHeight, weight: userWeight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen1(
                    theResult: calc.calculateBMI(),
                    theResultText: calc.getResult(),
                    theInterpretation: calc.getInterpretation(),
                  ),
                ),
              );
              print('The result is printed.');
            },
            child: Container(
              child: Center(
                  child: Text(
                'Calculate Your BMI',
                style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
              height: kbottomBarHeight,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
