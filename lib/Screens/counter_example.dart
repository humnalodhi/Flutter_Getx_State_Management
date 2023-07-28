import 'package:flutter/material.dart';
import 'package:flutter_getx_state_management/Controllers/counter_controller.dart';
import 'package:get/get.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  final CounterController controller = Get.put(CounterController()); // Global dependency injection / Injecting or adding getx controller in view.
  //int counter = 1;

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Example'),
      ),
      body: Center(
        child: Obx(() {
          print('reuild');
          return Text(controller.counter.toString(), style: const TextStyle(fontSize: 50),);
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.incrementCounter();
          //setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
