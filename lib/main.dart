import 'package:flutter/material.dart';
import './input_page.dart';


void main(List<String> args) {
   runApp(LifeExpectancy());
}
class LifeExpectancy extends StatelessWidget {
  const LifeExpectancy ({Key? key}) : super(key: key);

  @override
  Widget  build(BuildContext context) {
   return MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.lightBlue,
      primaryColor: Colors.lightBlue,

    ),
     home: InputPage(),
   );
    
  }
}