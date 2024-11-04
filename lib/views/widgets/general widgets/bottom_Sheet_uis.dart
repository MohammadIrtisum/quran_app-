import 'package:flutter/material.dart';
import 'package:get/get.dart';


class BottomSheetUis extends GetxController{
  var size = Get.size;
  RxBool isDarkMode = true.obs;

  Widget themeList(){
    return Obx(()=>Padding(padding: EdgeInsets.all(21),
      child: AnimatedContainer(
        curve: Curves.linearToEaseOut,
        duration:const Duration(milliseconds: 355),
        width: size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45),
            color: isDarkMode.value ? const Color(0xff1d3f5e) : Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  isDarkMode.value = false;
                  Get.changeTheme(ThemeData.light());
                  Get.changeThemeMode(ThemeMode.light);
                },
                child: Row(
                  children: [
                    Icon(Icons.light_mode,
                    color: isDarkMode.value?Colors.white : Colors.black,
                    ),
                    Text("  light mode",
                      style:TextStyle(
                        color: isDarkMode.value?Colors.white : Colors.black,
                        fontWeight: FontWeight.w900,
                        fontFamily: "SF-Pro",
                        fontSize: size.width * .045,
                      ),)
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  isDarkMode.value = true;
                  Get.changeTheme(ThemeData.dark());
                  Get.changeThemeMode(ThemeMode.dark);
                },
                child: Row(
                  children: [
                    Icon(Icons.dark_mode,
                    color: isDarkMode.value?Colors.white : Colors.black,
                    ),
                    Text("  dark mode",
                      style:TextStyle(
                        color: isDarkMode.value?Colors.white : Colors.black,
                        fontWeight: FontWeight.w900,
                        fontFamily: "SF-Pro",
                        fontSize: size.width * .045,
                      ),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    )
    );
  }
}
