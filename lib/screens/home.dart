import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      child: IconContent(
                        title: 'MALE',
                        iconData: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ReusableCard(
                      child: IconContent(
                        title: 'FEMALE',
                        iconData: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ReusableCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '180',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    SliderTheme(
                      data: SliderThemeData(
                        thumbColor: kBottomContainerColour,
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 18,
                        ),
                      ),
                      child: Slider(
                        value: 180,
                        min: 10,
                        max: 300,
                        onChanged: (newVal) {
                          print(newVal);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'HEIGHT',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 22,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                '60',
                                style: TextStyle(
                                  fontSize: 40,
                                ),
                              ),
                              Text(
                                'kg',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.remove,
                                  size: 30,
                                ),
                                shape: CircleBorder(),
                                fillColor: Colors.grey,
                                constraints: BoxConstraints.tightFor(
                                  height: 56,
                                  width: 56,
                                ),
                              ),
                              const SizedBox(width: 10),
                              RawMaterialButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                ),
                                shape: CircleBorder(),
                                fillColor: Colors.grey,
                                constraints: BoxConstraints.tightFor(
                                  height: 56,
                                  width: 56,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ReusableCard(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 22,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                '20',
                                style: TextStyle(
                                  fontSize: 40,
                                ),
                              ),
                              Text(
                                'yrs',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.remove,
                                  size: 30,
                                ),
                                shape: CircleBorder(),
                                fillColor: Colors.grey,
                                constraints: BoxConstraints.tightFor(
                                  height: 56,
                                  width: 56,
                                ),
                              ),
                              const SizedBox(width: 10),
                              RawMaterialButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                ),
                                shape: CircleBorder(),
                                fillColor: Colors.grey,
                                constraints: BoxConstraints.tightFor(
                                  height: 56,
                                  width: 56,
                                ),
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
          ),
          const SizedBox(height: 10),
          Material(
            color: kBottomContainerColour,
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 56,
                width: double.infinity,
                // width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
