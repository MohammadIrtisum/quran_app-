import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/animated_menu_icon_animation_controller.dart';
import '../widgets/home screens widgets/appBar_menu_item_widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    AnimatedMenuAnimationController animatedMenuAnimationController = Get.put(AnimatedMenuAnimationController());
    var size = Get.size;
    var appBarHeight = AppBar().preferredSize.height;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              AppbarMenuItemWidgets()
            ],
          ),
        ),
      ),
    );
  }
}
