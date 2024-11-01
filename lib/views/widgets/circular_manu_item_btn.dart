import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CircularManuItemBtn extends StatelessWidget {
  final IconData iconData;
  const CircularManuItemBtn({super.key, required this.iconData});

  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    return GestureDetector(
      onTap: (){
        Get.bottomSheet(
          Padding(padding: EdgeInsets.all(21),
          child: Container(
              width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45)
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.light_mode),
                    Text("  light mode")
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.dark_mode),
                    Text("  dark mode")
                  ],
                )
              ],
            ),
          ),
          ),

        );
      },
      child: AnimatedContainer(
        curve: Curves.linearToEaseOut,
        duration:const Duration(milliseconds: 555),
        width: size.width*.1,
        height:size.width*.1,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(1000),
        ),
        child: Icon(iconData),
      ),
    );
  }
}
