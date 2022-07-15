import 'package:flutter/material.dart';

typedef OnDrawerStateChangedCallback = Function(DrawerState state);

class CustomDrawer extends StatefulWidget {
  final CustomDrawerController controller;
  final Widget drawer;
  final Widget screen;

  const CustomDrawer({
    Key? key,
    required this.controller,
    required this.drawer,
    required this.screen,
  }) : super(key: key);

  @override
  State<CustomDrawer> createState() => CustomDrawerState();
}

class CustomDrawerState extends State<CustomDrawer>
    with SingleTickerProviderStateMixin {
  final double _maxSlide = 225;

  @override
  void initState() {
    super.initState();

    widget.controller._animationController = AnimationController(
      vsync: this,
      duration: widget.controller.duration,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.controller._animationController,
      builder: (BuildContext context, Widget? child) {
        double slide = widget.controller._animationController.value * _maxSlide;
        double scale = 1 - (widget.controller._animationController.value * 0.3);
        return Stack(
          children: [
            widget.drawer,
            Transform(
              transform: Matrix4.identity()
                ..translate(slide)
                ..scale(scale),
              alignment: Alignment.centerLeft,
              child: widget.screen,
            ),
          ],
        );
      },
    );
  }
}

class CustomDrawerController {
  late final AnimationController _animationController;
  Duration duration;
  final OnDrawerStateChangedCallback? drawerStateChanged;

  CustomDrawerController({
    this.duration = const Duration(milliseconds: 500),
    this.drawerStateChanged,
  });

  void toggle() {
    if (_animationController.isDismissed) {
      _animationController.forward();
      drawerStateChanged != null ? drawerStateChanged!(DrawerState.open) : null;
    } else {
      _animationController.reverse();
      drawerStateChanged != null
          ? drawerStateChanged!(DrawerState.close)
          : null;
    }
  }
}

enum DrawerState {
  open,
  close,
}
