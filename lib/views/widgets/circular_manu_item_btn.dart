import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CircularManuItemBtn extends StatelessWidget {
  final IconData iconData;
  final Widget widget;
  const CircularManuItemBtn({super.key, required this.iconData, required this.widget});

  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    return GestureDetector(
      onTap: (){
        Get.bottomSheet(
          widget,

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
