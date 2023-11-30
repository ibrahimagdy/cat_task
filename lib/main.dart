import 'package:cat_task/add_profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AddProfileScreen.routeName,
      routes: {
        AddProfileScreen.routeName : (context) =>  const AddProfileScreen(),
      },
    );
  }

}