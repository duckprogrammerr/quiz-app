import 'package:flutter/material.dart';

class FadeDownAnimation extends StatefulWidget {
  final Widget child;
  const FadeDownAnimation({Key? key, required this.child}) : super(key: key);

  @override
  State<FadeDownAnimation> createState() => _FadeDownAnimationState();
}

class _FadeDownAnimationState extends State<FadeDownAnimation> {
  bool animate = false;
  @override
  void initState() {
    animate = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedAlign(
      duration: const Duration(milliseconds: 500),
      alignment: animate ? const Alignment(0, 1) : const Alignment(0, 0),
      child: widget.child,
    );
  }
}
