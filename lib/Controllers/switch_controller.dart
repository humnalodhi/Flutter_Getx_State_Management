import 'package:get/get.dart';

class SwitchController extends GetxController{
  RxBool notification = false.obs;

  void setNotification(bool val){
    notification.value = val;

  }
}