import 'package:descargarmusic/screens/ajustes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InicioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pruebas'),
        actions: [
          IconButton(
              onPressed: () {
                // Get.to(AjustesScreen());
                // Get.off(AjustesScreen());
                // Get.offAll(AjustesScreen());
                // Get.toNamed('/ajustes');
                // Get.toNamed("/ajustes", arguments: 'ArgumentosEnviar');
                // Get.offAllNamed("/ajustes?device=phone&id=354&name=Enzo");
                // var parameters = <String, String>{"flag": "true","country": "italy",};
                // Get.toNamed("/ajustes/34954", parameters: parameters);
                Get.toNamed("/ajustes/34954");
              },
              icon: Icon(Icons.settings),
              color: Colors.white)
        ],
        leading: IconButton(
            onPressed: () {
              Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
            },
            icon: Icon(Icons.supervised_user_circle, color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                Get.toNamed("/control");
              },
              child: const Text(
                'Visita Control',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Text('Hola Mundo'),
          ],
        ),
      ),
    );
  }
}
