import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedMenuAnimationController extends GetxController with GetSingleTickerProviderStateMixin{
  late AnimationController _controller;
  RxBool isPlaying = false.obs;

  Rx<AnimationController>get controller => _controller.obs;


  @override
  void onInit() {
    super.onInit();
    _controller = AnimationController(vsync: this,
    duration: Duration(milliseconds: 555),
    );
  }

  triggerMenuClick(){
    isPlaying.value = ! isPlaying.value;

    isPlaying.value ? _controller.forward(): _controller.reverse();

  }

}
