import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/reusable_card.dart';
import '../widget/child_reusable_card.dart';
import '../widget/full_icon_windows.dart';
import '../constant.dart';

const Color bottomCardColor = Color(0xFFFF0067);
const Color activeMaleColor = Color(0xFF282B4E);
const Color inActiveMaleColor = Color(0xFFCCCCCC);

enum Gender { male, female }
enum Operation { weight, age }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inActiveMaleColor;
  int height = 180;
  int weight = 74;
  int age = 20;
  late Gender selectedGender;

  void onPressed1(Operation str) {
    setState(() {
      str == Operation.weight?weight++:age++;
    });
  }

  void onPressed2(Operation str) {
    setState(() {
      str == Operation.weight?weight--:age--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
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
                      selectedGender = Gender.male;
                      print(selectedGender);
                    });
                  },
                  child: ReusableCard(
                      child: ChildReusableCard(
                    icon: FontAwesomeIcons.mars,
                    iconText: 'MALE',
                  )),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                      print(selectedGender);
                    });
                  },
                  child: ReusableCard(
                      child: ChildReusableCard(
                    icon: FontAwesomeIcons.venus,
                    iconText: 'FEMALE',
                  )),
                ),
              )
            ],
          )),
          Expanded(
            child: ReusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '$height',
                        style: kNumberStyle,
                      ),
                      Text('cm')
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbColor: Color(0xFFEB1555),
                        activeTrackColor: Colors.white,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15)),
                    child: Slider(
                        activeColor: Color(0xFFEB1555),
                        inactiveColor: Color(0xFF8D8E98),
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                        min: 120,
                        max: 220),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WIEGHT'),
                      Text(weight.toString(), style: kNumberStyle),
                      FullIconsWindows(
                          icon1: Icons.add,
                          icon2: Icons.exposure_minus_1,
                          onPressed1: () => onPressed1(Operation.weight),
                          onPressed2: () => onPressed2(Operation.weight))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Age'),
                    Text(age.toString(), style: kNumberStyle),
                    FullIconsWindows(
                        icon1: Icons.add,
                        icon2: Icons.exposure_minus_1,
                        onPressed1: () => onPressed1(Operation.age),
                        onPressed2: () => onPressed2(Operation.age))
                  ],
                )),
              ),
            ],
          )),
          Container(
            decoration: BoxDecoration(color: bottomCardColor),
            width: double.infinity,
            height: 80,
            margin: EdgeInsets.only(top: 10),
          )
        ],
      ),
    );
  }
}
