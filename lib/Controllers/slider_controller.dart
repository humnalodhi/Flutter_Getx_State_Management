import 'package:get/get.dart';

class SliderController extends GetxController{
  RxDouble opacity = 0.4.obs;

  void setOpacity(double val){
    opacity.value = val;
  }
}