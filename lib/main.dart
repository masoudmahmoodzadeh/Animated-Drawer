import 'package:flutter/material.dart';

import 'screens/app_drawer.dart';
import 'screens/home_screen.dart';
import 'theme/theme_manager.dart';
import 'widgets/animated_drawer.dart';
import 'widgets/icon_animated.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeManager().create(),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Animated Drawer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late DrawerState drawerState;
  late CustomDrawerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = CustomDrawerController(
      drawerStateChanged: (DrawerState state) {
        drawerState = state;
        print(drawerState.toString());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconAnimated(
          onPressed: () {
            _controller.toggle();
          },
        ),
      ),
      body: AnimatedDrawer(
        controller: _controller,
        drawer: const AppDrawer(),
        screen: const HomeScreen(),
      ),
    );
  }
}
