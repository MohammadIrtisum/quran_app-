import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CircularManuItemBtn extends StatelessWidget {
  final IconData iconData;
  final Widget widget;
  final RxBool isDarkMode;
  final bool isMissingFeature;
  const CircularManuItemBtn({super.key, required this.iconData, required this.widget, required this.isDarkMode, this.isMissingFeature = false});

  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    return Obx(()=>GestureDetector(
      onTap: (){
        isMissingFeature? Get.snackbar("Sorry!!!", "This feature will be add soon......",
        backgroundColor: Color(0xff1d3f5e),
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
          margin:  EdgeInsets.all(11),

        ):
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
