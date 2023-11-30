import 'package:flutter/material.dart';

class AnimalInfo extends StatelessWidget{
  final String property;
  final String answerOfProperty;
  const AnimalInfo({super.key, required this.property, required this.answerOfProperty});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                property,
                style: const TextStyle(
                  color: Color(0xff8a8e92),
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              Text(
                answerOfProperty,
                style: const TextStyle(
                  color: Color(0xff696d73),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Divider(
            thickness: 0.5,
            color: Color(0xff696d73),
          ),
        ),
      ],
    );
  }

}