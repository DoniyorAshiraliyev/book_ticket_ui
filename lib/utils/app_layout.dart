import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AppLayout{
  AppLayout._();
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }
  static getScreenHeight(){
    return Get.height;
  }
  static getScreenWidth(){
    return Get.width;
  }


  // iPhone 14 pro size in pixels
  static getHeight(double pixels){
    double x=852/pixels;//800/200=4
    return getScreenHeight()/x;//800/4  1600/4=400
  }
  static getWidth(double pixels){
    double x=400/pixels;//800/200=4
    return getScreenWidth()/x;//800/4
  }
}