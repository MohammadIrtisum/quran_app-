import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetUis extends GetxController{
  var size = Get.size;

  Widget themeList(){
    return Padding(padding: EdgeInsets.all(21),
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45),
            color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  Get.changeTheme(ThemeData.light());
                  Get.changeThemeMode(ThemeMode.light);
                },
                child: Row(
                  children: [
                    Icon(Icons.light_mode),
                    Text("  light mode",
                      style:TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: "SF-Pro",
                        fontSize: size.width * .045,
                      ),)
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Get.changeTheme(ThemeData.dark());
                  Get.changeThemeMode(ThemeMode.dark);
                },
                child: Row(
                  children: [
                    Icon(Icons.dark_mode),
                    Text("  dark mode",
                      style:TextStyle(
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
    );
  }
}
