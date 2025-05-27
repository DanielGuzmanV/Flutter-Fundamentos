
import 'package:basic_flutter/presentation/screens/container_screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',

  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.nameclass,
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.nameclass,
      builder: (context, state) => const ButtonsScreen(),
    ),

    GoRoute(
      path: '/cards',
      name: CardsScreen.nameclass,
      builder: (context, state) => const CardsScreen(),
    ),

    GoRoute(
      path: '/mainflutter',
      name: MainFlutter.nameclass,
      builder: (context, state) => const MainFlutter(),
    ),




    // Rutas de los components y layouts de AristiDevs
    GoRoute(
      path: '/layouts',
      builder: (context, state) => const BodyLayouts(),
    ),

    GoRoute(
      path: '/components',
      builder: (context, state) => const BodyComponents(),
    ),



  ]
);
