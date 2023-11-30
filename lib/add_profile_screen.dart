import 'package:cat_task/animal_information.dart';
import 'package:cat_task/important_dates.dart';
import 'package:flutter/material.dart';

class AddProfileScreen extends StatelessWidget{
  static const String routeName = "add profile";

  const AddProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        leading: const Icon(
          Icons.arrow_back,
          color: Color(0xff8a8e92),
        ),
        title: const Text(
          "Add Profile",
          style: TextStyle(
            color: Color(0xff696d73),
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: mediaQuery.height*0.03),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xffedeef4),
                  radius: 65,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/cat.png",
                    ),
                    radius: 50,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Fiona",
                      style: TextStyle(
                        color: Color(0xff696d73),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                        "Feline | European",
                      style: TextStyle(
                        color: Color(0xff8a8e92),
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: mediaQuery.height*0.03),
            const Padding(
               padding: EdgeInsets.symmetric(horizontal: 30),
               child: Text(
                "Appearance and distinctive signs",
                style: TextStyle(
                  color: Color(0xff696d73),
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
            ),
             ),
            SizedBox(height: mediaQuery.height*0.005),
            const Padding(
               padding: EdgeInsets.symmetric(horizontal: 30),
               child: Text(
                "Light brown with white patches",
                style: TextStyle(
                  color: Color(0xff8a8e92),
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
            ),
             ),
            SizedBox(height: mediaQuery.height*0.03),
            const AnimalInfo(
                property: "Gender",
                answerOfProperty: "Female",
            ),
            const AnimalInfo(
                property: "Size",
                answerOfProperty: "Medium",
            ),
            const AnimalInfo(
                property: "Weight",
                answerOfProperty: "6 kg",
            ),
            SizedBox(height: mediaQuery.height*0.02),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Important Dates",
                style: TextStyle(
                  color: Color(0xff696d73),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: mediaQuery.height*0.02),
            const ImportantDates(
                iconOfDate: Icon(
                  Icons.cake,
                  color: Color(0xff708ee0),
                ),
                nameOfImportantDate: "Birthday",
                date: "3 November 2022",
                duration: "1 y.o",
            ),
            const ImportantDates(
                iconOfDate: Icon(
                  Icons.home,
                  color: Color(0xff708ee0),
                ),
                nameOfImportantDate: "Adoption Day",
                date: "14 February 2023",
            ),
            SizedBox(height: mediaQuery.height*0.01),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Caretakers",
                style: TextStyle(
                  color: Color(0xff696d73),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: mediaQuery.height*0.02),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/caretakers.png",
                    ),
                    radius: 25,
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Guy Hawkins",
                        style: TextStyle(
                          color: Color(0xff696d73),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "guyhawkins@gmail.com",
                        style:  TextStyle(
                          color: Color(0xff8a8e92),
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: mediaQuery.height*0.06),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromHeight(55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  child: const Text(
                    "Add to account",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}