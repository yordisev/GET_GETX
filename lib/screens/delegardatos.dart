import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwesomeController extends GetxController {
  final String title = 'My Awesome View';
}

class AwesomeView extends GetView<AwesomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pruebas controler'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Text(Get.put(AwesomeController().title)),
        // child: Text(controller.title),
      ),
    );
  }
}
