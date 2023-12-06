import 'package:descargarmusic/utils/imagenes.dart';
import 'package:flutter/material.dart';

class CambiarIcono extends StatefulWidget {
  const CambiarIcono({Key? key}) : super(key: key);

  @override
  State<CambiarIcono> createState() => _CambiarIconoState();
}

class _CambiarIconoState extends State<CambiarIcono> {
  int iconIndex = 0;

  List iconName = <String>['icono1', 'icono2', 'icono3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildIconTile(0, 'blue'),
              buildIconTile(1, 'red'),
              buildIconTile(2, 'green'),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => changeAppIcon(),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.blue,
                    fixedSize: Size(MediaQuery.of(context).size.width - 40, 47),
                    textStyle: const TextStyle(fontWeight: FontWeight.bold)),
                child: Text(
                  'Enviar',
                  style: const TextStyle(fontSize: 18.00),
                ),
              )
            ],
          )),
    );
  }

  Widget buildIconTile(int index, String themeTxt) => Padding(
        padding: EdgeInsets.all(20 / 2),
        child: GestureDetector(
          onTap: () => setState(() => iconIndex = index),
          child: ListTile(
              contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
              leading: Image.asset(
                imagefiles[index],
                width: 45,
                height: 45,
              ),
              title: Text(themeTxt, style: const TextStyle(fontSize: 25)),
              trailing: iconIndex == index
                  ? const Icon(
                      Icons.check_circle_rounded,
                      color: Colors.green,
                      size: 30,
                    )
                  : Icon(
                      Icons.circle_outlined,
                      color: Colors.grey.withOpacity(0.5),
                      size: 30,
                    )),
        ),
      );

  changeAppIcon() async {
    // iconName[iconIndex];
  }
}
