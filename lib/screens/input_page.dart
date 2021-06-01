import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:easy_lifts2/components/reusable_card.dart';
import 'package:easy_lifts2/components/icon_content.dart';
import 'package:easy_lifts2/components/bottom_button.dart';
import 'package:easy_lifts2/components/round_icon_button.dart';

class InputPage extends StatefulWidget {
  static const String id = 'input_page';

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int bench = 100;
  int squat = 135;
  int ohp = 95;
  int deadlift = 225;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('EasyLifts 5x5')),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  //onPress: () {},
                  cardChild: Column(
                    children: [
                      IconContent(
                        text: 'Bench Press',
                        icon: FontAwesomeIcons.dumbbell,
                        weight: bench.toString(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                bench = bench - 5;
                              });
                            },
                          ),
                          SizedBox(width: 5),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                bench = bench + 5;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  //onPress: () {},
                  cardChild: Center(
                    child: Column(
                      children: [
                        IconContent(
                          text: 'Squat',
                          icon: FontAwesomeIcons.baby,
                          weight: squat.toString(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  squat = squat - 10;
                                });
                              },
                            ),
                            SizedBox(width: 5),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  squat = squat + 10;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  //onPress: () {},
                  cardChild: Column(
                    children: [
                      IconContent(
                        text: 'Shoulder Press',
                        icon: FontAwesomeIcons.child,
                        weight: ohp.toString(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                ohp = ohp - 5;
                              });
                            },
                          ),
                          SizedBox(width: 5),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                ohp = ohp + 5;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  //onPress: () {},
                  cardChild: Column(
                    children: [
                      IconContent(
                        text: 'Deadlift',
                        icon: FontAwesomeIcons.cat,
                        weight: deadlift.toString(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                deadlift = deadlift - 5;
                              });
                            },
                          ),
                          SizedBox(width: 5),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                deadlift = deadlift + 5;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        BottomButton(buttonTitle: 'ENTER', onTap: () {}),
        BottomButton(buttonTitle: 'STATS', onTap: () {}),
      ]),
    );
  }
}
