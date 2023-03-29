import 'package:bmi_calculator/widgets/customContainer.dart';
import 'package:bmi_calculator/widgets/weightAge_container.dart';
import 'package:bmi_calculator/widgets/widgetSlider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

int weightnum = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 17, 5, 42),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 17, 5, 42),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Text(
                  'BMI CALCULATOR',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontFamily: 'Roboto',
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomContainer(icon: Icons.male, text: 'MALE'),
                  CustomContainer(icon: Icons.female, text: 'female'),
                ],
              ),
              WidgetSlider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WeightAgeContainer(text: 'WEIGHT'),
                  WeightAgeContainer(text: 'AGE'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
