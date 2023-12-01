import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AjustesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(Get.parameters['id']);
    print(Get.parameters['name']);
    print(Get.parameters['user']);
    print(Get.parameters['flag']);
    print(Get.parameters['country']);
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      body: Center(
        child: Column(
          children: [
            // Text(Get.arguments),
            Text(Get.parameters['user'].toString()),
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 40,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
