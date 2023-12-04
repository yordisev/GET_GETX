import 'package:descargarmusic/screens/ajustes.dart';
import 'package:descargarmusic/screens/delegardatos.dart';
import 'package:descargarmusic/screens/menu.dart';
import 'package:get/get.dart';
import 'package:descargarmusic/screens/inicio.dart';
import 'package:descargarmusic/screens/splash.dart';

class AppRoutes {
  static List<GetPage> ROUTES = [
    GetPage(
      name: '/',
      page: () => const LoadingPage(),
    ),
    GetPage(
      name: '/menu',
      page: () => TabsScreen(),
    ),
    GetPage(
      name: '/inicio',
      page: () => InicioScreen(),
    ),
    GetPage(
        // name: '/ajustes',
        name: '/ajustes/:user',
        page: () => AjustesScreen(),
        transition: Transition.zoom),
    GetPage(
        name: '/control',
        page: () => AwesomeView(),
        transition: Transition.downToUp),
  ];
}
