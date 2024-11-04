import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/views/widgets/circular_manu_item_btn.dart';
import 'package:quran_app/views/widgets/general%20widgets/bottom_Sheet_uis.dart';

import '../../../controllers/animated_menu_icon_animation_controller.dart';

class AppbarMenuItemWidgets extends StatelessWidget {
  const AppbarMenuItemWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    BottomSheetUis bottomSheetUis = Get.put(BottomSheetUis());
    AnimatedMenuAnimationController animatedMenuAnimationController = Get.put(AnimatedMenuAnimationController());
    var size = Get.size;
    var appBarHeight = AppBar().preferredSize.height;
    return Obx(()=>AnimatedPositioned(
      left: animatedMenuAnimationController.isPlaying.value?21:0,
      right: animatedMenuAnimationController.isPlaying.value?21:0,
      top: animatedMenuAnimationController.isPlaying.value?21:0,
      curve: Curves.linearToEaseOut,
      duration:const Duration(milliseconds: 355),
      child: AnimatedContainer(
        width: size.width,
        height:animatedMenuAnimationController.isPlaying.value?appBarHeight*1.5:appBarHeight,
        duration:const Duration(milliseconds: 755),
        curve: Curves.linearToEaseOut,
        decoration: BoxDecoration(
            color: const Color(0xff1d3f5e),
            borderRadius: BorderRadius.circular(animatedMenuAnimationController.isPlaying.value?45:0)
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedPositioned(
              left:animatedMenuAnimationController.isPlaying.value? - size.width* .35:0,
              top: 0,
              bottom: 0,
              curve: Curves.linearToEaseOut,
              duration:const Duration(milliseconds: 755),
              child: AnimatedOpacity(
                curve: Curves.linearToEaseOut,
                duration:const Duration(milliseconds: 355),
                opacity:animatedMenuAnimationController.isPlaying.value? 0: .15,
                child: Image.asset("assets/images/headerDesignL.png",
                  width: size.width * .35,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            AnimatedPositioned(
              right:animatedMenuAnimationController.isPlaying.value? -size.width*.35:0,
              top: 0,
              bottom: 0,
              curve: Curves.linearToEaseOut,
              duration:const Duration(milliseconds: 355),
              child: AnimatedOpacity(
                curve: Curves.linearToEaseOut,
                duration:const Duration(milliseconds: 355),
                opacity:animatedMenuAnimationController.isPlaying.value?0: .15,
                child: Image.asset("assets/images/headerDesignR.png",
                  width: size.width * .35,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            AnimatedPositioned(
              top:animatedMenuAnimationController.isPlaying.value? -appBarHeight:appBarHeight*.5 - size.width *.077*.5,
              curve: Curves.linearToEaseOut,
              duration:const Duration(milliseconds: 355),
              child: AnimatedOpacity(
                curve: Curves.linearToEaseOut,
                duration:const Duration(milliseconds: 955),
                opacity:animatedMenuAnimationController.isPlaying.value?0: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/quran icon.png",
                      width: size.width *.077,
                      height: size.width *.077,
                    ),
                    Text("  al-qur'an",
                      style: TextStyle(
                        fontSize:size.width *.065,
                        color: Colors.white,
                        fontFamily: "Bismillah Script",
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              right: 21,
              curve: Curves.linearToEaseOut,
              duration:const Duration(milliseconds: 355),
              child: GestureDetector(
                onTap: (){
                  animatedMenuAnimationController.triggerMenuClick();
                },
                child: AnimatedIcon(icon: AnimatedIcons.close_menu, progress: animatedMenuAnimationController.controller.value,
                  color: Colors.white,
                  size: size.width*0.081,
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              child: AnimatedOpacity(
                curve: Curves.linearToEaseOut,
                duration:const Duration(milliseconds: 555),
                opacity:animatedMenuAnimationController.isPlaying.value?1: 0,
                child: SizedBox(
                  width: size.width - size.width*0.081 -84,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                       CircularManuItemBtn(iconData: Icons.light_mode,widget:bottomSheetUis.themeList(),),
                       CircularManuItemBtn(iconData: Icons.bookmark,widget: bottomSheetUis.themeList(),),
                      CircularManuItemBtn(iconData: Icons.favorite,widget: bottomSheetUis.themeList(),),
                       CircularManuItemBtn(iconData: Icons.manage_search_outlined,widget: bottomSheetUis.themeList(),),
                       CircularManuItemBtn(iconData: Icons.info,widget: bottomSheetUis.themeList(),),

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    )
    );
  }
}
