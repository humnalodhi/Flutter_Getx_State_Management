import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controllers/switch_controller.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  final SwitchController controller = Get.put(SwitchController());
  //bool notification = false;

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Notifications'),
            Obx((){
              print('rebuild');
              return Switch(value: controller.notification.value, onChanged: (val){
                controller.setNotification(val);
                // notification = val;
                // setState(() {
                //
                // });
              });
            })
          ],
        ),
      ),
    );
  }
}
