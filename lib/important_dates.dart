import 'package:flutter/material.dart';

class ImportantDates extends StatelessWidget{
  final Icon iconOfDate;
  final String nameOfImportantDate;
  final String date;
  final String? duration;
  const ImportantDates({super.key, required this.iconOfDate, required this.nameOfImportantDate, required this.date, this.duration,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 35,
                decoration: BoxDecoration(
                  color: const Color(0xffe2f3fe),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: iconOfDate,
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nameOfImportantDate,
                    style: const TextStyle(
                      color: Color(0xff8a8e92),
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                      color: Color(0xff696d73),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 120),
              Text(
                duration ?? "",
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