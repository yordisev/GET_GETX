import 'package:descargarmusic/config/routes.dart';
import 'package:descargarmusic/screens/UnknownRoutePage.dart';
import 'package:descargarmusic/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kDarkBlueColor,
      ),
      unknownRoute: GetPage(name: '/notfound', page: () => NofounPage()),
      initialRoute: "/",
      getPages: AppRoutes.ROUTES,
    ),
  );
}
