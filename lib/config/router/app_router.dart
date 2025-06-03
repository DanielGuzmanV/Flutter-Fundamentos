
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

    GoRoute(
      path: '/progress',
      name: ProgressScreen.nameclass,
      builder: (context, state) => const ProgressScreen(),
    ),

    GoRoute(
      path: '/snackbars',
      name: SnackbarScreen.nameclass,
      builder: (context, state) => const SnackbarScreen(),
    ),

    GoRoute(
      path: '/animated',
      name: AnimatedScreen.nameclass,
      builder: (context, state) => const AnimatedScreen(),
    ),

    GoRoute(
      path: '/ui-controls',
      name: UiControlsScreen.nameclass,
      builder: (context, state) => const UiControlsScreen(),
    ),

    GoRoute(
      path: '/tutorial',
      name: TutorialScreen.nameclass,
      builder: (context, state) => const TutorialScreen(),
    ),

    GoRoute(
      path: '/infinite',
      name: InfiniteScrollScreen.nameclass,
      builder: (context, state) => const InfiniteScrollScreen(),
    ),

    GoRoute(
      path: '/counter',
      name: CounterScreen.nameclass,
      builder: (context, state) => const CounterScreen(),
    ),

    GoRoute(
      path: '/theme_changer',
      name: ThemeScreen.nameclass,
      builder: (context, state) => const ThemeScreen(),
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

    // Layouts:
    GoRoute(
      path: '/columnBasic',
      builder: (context, state) => const ClassColumn(),
    ),

    GoRoute(
      path: '/rowBasic',
      builder: (context, state) => const ClassRow(),
    ),

    // Components:
    GoRoute(
      path: '/buttonsBasic',
      builder: (context, state) => const ClassButton(),
    ),

    GoRoute(
      path: '/imageBasic',
      builder: (context, state) => const ClassImage(),
    ),
    GoRoute(
      path: '/textBasic',
      builder: (context, state) => const ClassText(),
    ),
    GoRoute(
      path: '/textfieldBasic',
      builder: (context, state) => const ClassTexfield(),
    ),


  ]
);
