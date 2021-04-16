import 'package:flutter/material.dart';
import 'reusableCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';

ReusableCard firstReusableCare = ReusableCard();

const bottomBarHeight = 80.0;
const originalColour = Colors.blue;
const activeColour = Colors.red;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = originalColour;
  Color femaleCardColor = originalColour;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == originalColour) {
        maleCardColor = activeColour;
        femaleCardColor = originalColour;
      } else {
        maleCardColor = originalColour;
      }
    } else if (gender == 2) {
      if (femaleCardColor == originalColour) {
        femaleCardColor = activeColour;
        maleCardColor = originalColour;
      } else {
        femaleCardColor = originalColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: ForIcon(
                        iconName: FontAwesomeIcons.mars,
                        textName: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColor,
                      cardChild: ForIcon(
                        iconName: FontAwesomeIcons.venus,
                        textName: 'Female',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(colour: originalColour)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(colour: originalColour)),
                Expanded(child: ReusableCard(colour: originalColour)),
              ],
            ),
          ),
          Container(
            height: bottomBarHeight,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.amber,
            ),
          )
        ],
      ),
    );
  }
}

//------------------------------------------------------------------------------

// Color(0xFF4E6656);
