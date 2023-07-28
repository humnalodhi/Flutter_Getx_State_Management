import 'package:flutter/material.dart';
import 'package:flutter_getx_state_management/Controllers/slider_controller.dart';
import 'package:get/get.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  final SliderController controller = Get.put(SliderController());
  //double opacity = 0.4;

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sider Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() {
            print('rebuild container');
            return Container(
              height: 200,
              width: 200,
              color: Colors.red.withOpacity(controller.opacity.value),
            );
          }),
          Obx(() {
            print('rebuild slider');
            return Slider(
                value: controller.opacity.value,
                onChanged: (val) {
                  controller.setOpacity(val);
                  // print(val);
                  // opacity = val;
                  // setState(() {});
                });
          })
        ],
      ),
    );
  }
}
