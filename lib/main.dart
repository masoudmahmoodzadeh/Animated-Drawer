import 'package:flutter/material.dart';

import 'custom_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
        leading: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            _controller.toggle();
          },
        ),
      ),
      body: CustomDrawer(
        controller: _controller,
        drawer: Container(color: Colors.black),
        screen: Container(color: Colors.orange),
      ),
    );
  }
}
