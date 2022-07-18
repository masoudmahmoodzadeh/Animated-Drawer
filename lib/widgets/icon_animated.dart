import 'package:flutter/material.dart';

class IconAnimated extends StatefulWidget {
  final VoidCallback onPressed;

  const IconAnimated({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<IconAnimated> createState() => _IconAnimatedState();
}

class _IconAnimatedState extends State<IconAnimated>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 450));
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: _handleOnPressed,
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: _animationController,
      ),
    );
  }

  void _handleOnPressed() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _animationController.forward()
          : _animationController.reverse();

      widget.onPressed();

    });

  }
}
