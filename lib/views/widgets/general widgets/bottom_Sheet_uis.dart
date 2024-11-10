import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class BottomSheetUis extends GetxController{
  var size = Get.size;
  RxBool isDarkMode = true.obs;


  @override
  void onInit() {
    super.onInit();
    getThemeState();
  }

  getThemeState() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if(sharedPreferences.containsKey("dark_Mode")){
      if(sharedPreferences.getBool("dark_Mode")!){
        isDarkMode.value = true;
        Get.changeTheme(ThemeData.dark());
        Get.changeThemeMode(ThemeMode.dark);
      }
      else{
        isDarkMode.value = false;
        Get.changeTheme(ThemeData.light());
        Get.changeThemeMode(ThemeMode.light);
      }
    }
  }

  saveThemeState( bool darkModeEnable) async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool("dark_Mode", darkModeEnable);
  }

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
                  saveThemeState(isDarkMode.value);
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
                  saveThemeState(isDarkMode.value);
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

  Widget aboutApp(){
    return Obx(()=>Padding(padding: EdgeInsets.all(21),
    child: AnimatedContainer(duration:  Duration(milliseconds: 555),
    curve: Curves.linearToEaseOut,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
        color: isDarkMode.value ? const Color(0xff1d3f5e) : Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:11.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.info_outline_rounded,
                    color: isDarkMode.value
                        ? Colors.white
                        : const Color(0xff1d3f5e),
                  ),
                  Text("  about",
                  style: TextStyle(
                      fontFamily: "SF-Pro",
                      fontWeight: FontWeight.w900,
                      fontSize: size.width * .035,
                      color: isDarkMode.value
                          ? Colors.white
                          : const Color(0xff1d3f5e)
                  ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(21.0),
              child: Container(
                width: size.width*.31,
                height: size.width*.31,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  color: isDarkMode.value?Colors.white: Color(0xff1d3f5e),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                      child: Image.asset("assets/images/Profie_project1.jpg",
                      fit: BoxFit.cover,
                      )
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 11.0),
              child: Text(
                "السَّلَامُ عَلَيْكُمْ وَرَحْمَةُ ٱللَّهِ وَبَرَكاتُهُ",
                style: TextStyle(
                    wordSpacing: 2,
                    fontFamily: 'Al_Mushaf',
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                    color:
                    isDarkMode.value ? Colors.white : Colors.black),
                textScaler: TextScaler.linear(Get.pixelRatio),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11.0),
              child: Text.rich(
                TextSpan(
                    style: TextStyle(
                        color: isDarkMode.value
                            ? Colors.white
                            : Colors.black),
                    children: const [
                      TextSpan(
                        text:
                        "\nthis app is intended to be a Sadaqatul Jariyah ",
                        style: TextStyle(
                          fontFamily: 'varela-round.regular',
                        ),
                      ),
                      TextSpan(
                        text:
                        "(long-term kindness that accrues ongoing reward from ALLAH (SWT)) ",
                        style: TextStyle(
                            fontFamily: 'varela-round.regular',
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                        "for everyone associated in the making of it.  we will make it opensource with the very first stable release (",
                        style: TextStyle(
                          fontFamily: 'varela-round.regular',
                        ),
                      ),
                      TextSpan(
                        text: "إن شاء الله",
                        style: TextStyle(
                            wordSpacing: 2,
                            fontFamily: 'Al Majeed Quranic Font_shiped',
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                          text:
                          "). none of the users' personal data are stored in our servers without encryption. even we won't be able to decrypt those data. keep us in your prayers.\n"),
                    ]),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "مَعَ ٱلسَّلَامَة\n",
              style: TextStyle(
                  wordSpacing: 2,
                  fontFamily: 'Al Majeed Quranic Font_shiped',
                  fontSize: 9,
                  fontWeight: FontWeight.bold,
                  color: isDarkMode.value ? Colors.white : Colors.black),
              textScaler: TextScaler.linear(Get.pixelRatio),
            )
        
          ],
        ),
      ),
    ),
    ),
    );
  }

}
