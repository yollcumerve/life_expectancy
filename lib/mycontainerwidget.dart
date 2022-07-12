import 'package:flutter/material.dart';


class MyContainer extends StatelessWidget {
const MyContainer ({Key? key ,this.renk = Colors.white, this.child, this.onPress}) : super(key: key);

final Widget? child;
final Color? renk;
final Function()? onPress;


 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin :  const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
                           
        borderRadius: BorderRadius.circular(10.0),
         color: renk,
      ),
                                    
       ),
    );
  }
}

