import 'package:flutter/material.dart';

class WeightContainer extends StatefulWidget {
  WeightContainer({super.key, required this.text});
  final String text;

  @override
  State<WeightContainer> createState() => _WeightContainerState();
}

class _WeightContainerState extends State<WeightContainer> {
  @override
  int weightnum = 50;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 177,
      decoration: BoxDecoration(
        color: Color.fromRGBO(10, 4, 22, 0.941),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            widget.text,
            style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 28,
                fontWeight: FontWeight.w500),
          ),
          Text(
            '$weightnum',
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                backgroundColor: Color(0xff5C5B5B),
                onPressed: () {
                  setState(() {});

                  weightnum--;
                },
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              FloatingActionButton(
                backgroundColor: Color(0xff5C5B5B),
                onPressed: () {
                  setState(() {});

                  weightnum++;
                },
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AgeContainer extends StatefulWidget {
  const AgeContainer({super.key, required this.text});
  final String text;

  @override
  _AgeContainerState createState() => _AgeContainerState();
}

int agenum = 20;

class _AgeContainerState extends State<AgeContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 177,
      decoration: BoxDecoration(
        color: Color.fromRGBO(10, 4, 22, 0.941),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            widget.text,
            style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 28,
                fontWeight: FontWeight.w500),
          ),
          Text(
            '$agenum',
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                backgroundColor: Color(0xff5C5B5B),
                onPressed: () {
                  setState(() {});

                  agenum--;
                },
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              FloatingActionButton(
                backgroundColor: Color(0xff5C5B5B),
                onPressed: () {
                  setState(() {});

                  agenum++;
                },
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
