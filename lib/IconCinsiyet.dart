import 'package:flutter/material.dart';
import 'package:life_expectancy/constant.dart';




class IconCinsiyet extends StatelessWidget {
  const IconCinsiyet({Key? key, required this.cinsiyet, this.icon}) : super(key: key);

  final String cinsiyet;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                       icon,
                        size: 50,
                        color: Colors.black,

                      ),
                      SizedBox(
                        height: 10 ,
                      ),
                      Text(
                      cinsiyet,
                      style: kYaziStili,
                      ),
                    ],
                    );
  }
}