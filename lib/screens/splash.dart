import 'package:animate_do/animate_do.dart';
import 'package:descargarmusic/screens/inicio.dart';
import 'package:descargarmusic/screens/menu.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: scren(context),
        builder: (context, snapshot) {
          return ZoomIn(
            delay: const Duration(milliseconds: 500),
            duration: const Duration(milliseconds: 1000),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 50),
                  child: Swing(
                    delay: const Duration(milliseconds: 2200),
                    duration: const Duration(milliseconds: 2000),
                    child: Stack(
                      children: [
                        SpinPerfect(
                          delay: const Duration(milliseconds: 1200),
                          duration: const Duration(milliseconds: 1000),
                          child: const Icon(
                            Icons.music_note,
                            size: 250,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ZoomIn(
                  delay: const Duration(milliseconds: 1200),
                  duration: const Duration(milliseconds: 1000),
                  child: const Text(
                    'Tu Musica Al Instante',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                )
              ],
            )),
          );
        },
      ),
    );
  }
}

Future scren(BuildContext context) async {
  await Future.delayed(const Duration(milliseconds: 5000), () {
    Route route = MaterialPageRoute(builder: (context) => TabsScreen());
    Navigator.pushReplacement(context, route);
  });
}
