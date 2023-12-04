import 'package:descargarmusic/screens/ajustes.dart';
import 'package:descargarmusic/screens/delegardatos.dart';
import 'package:descargarmusic/shared/constants.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Unlock',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          // leading: IconButton(
          //     onPressed: () async {},
          //     icon: const Icon(
          //       Icons.output_rounded,
          //       size: 25,
          //       color: Colors.white,
          //     )),
          // actions: [
          //   IconButton(
          //       onPressed: () {},
          //       icon: const Icon(
          //         Icons.settings,
          //         size: 25,
          //         color: Colors.white,
          //       ))
          // ],
          backgroundColor: kDarkBlueColor,
          // centerTitle: true,
          bottom: const TabBar(
              padding: EdgeInsets.only(),
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              indicatorSize: TabBarIndicatorSize.tab,
              isScrollable: true,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white38,
              labelPadding: EdgeInsets.only(left: 40, right: 40),
              tabs: [
                Tab(
                    child: Text('prueba'),
                    icon: Icon(
                      Icons.security_outlined,
                      size: 40,
                    )),
                Tab(
                    child: Text('prueba1'),
                    icon: Icon(
                      Icons.key_rounded,
                      size: 40,
                    )),
                Tab(
                    child: Text('prueba2'),
                    icon: Icon(
                      Icons.lock,
                      size: 40,
                    )),
              ]),
        ),
        body: TabBarView(children: [
          AwesomeView(),
          AjustesScreen(),
          Text('pruebas'),
        ]),
      ),
    );
  }
}
