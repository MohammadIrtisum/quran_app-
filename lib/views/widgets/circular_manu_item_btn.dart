import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CircularManuItemBtn extends StatelessWidget {
  final IconData iconData;
  final Widget widget;
  final RxBool isDarkMode;
  const CircularManuItemBtn({super.key, required this.iconData, required this.widget, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    return Obx(()=>GestureDetector(
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
          color: isDarkMode.value?Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(1000),
        ),
        child: Icon(iconData),
      ),
    ));
  }
}
