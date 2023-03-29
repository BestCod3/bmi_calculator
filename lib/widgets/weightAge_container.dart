import 'package:flutter/material.dart';

class WeightAgeContainer extends StatefulWidget {
  WeightAgeContainer({super.key, required this.text});
  final String text;

  @override
  State<WeightAgeContainer> createState() => _WeightAgeContainerState();
}

class _WeightAgeContainerState extends State<WeightAgeContainer> {
  @override
  int num = 0;

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
            '$num',
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

                  num--;
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

                  num++;
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
