import 'package:flutter/material.dart';
import 'package:flutter_getx_state_management/Screens/counter_example.dart';
import 'package:flutter_getx_state_management/Screens/image_picker_example.dart';
import 'package:flutter_getx_state_management/Screens/slider_example.dart';
import 'package:flutter_getx_state_management/Screens/switch_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Getx State Management',
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: const ImagePickerExample(),
    );
  }
}

