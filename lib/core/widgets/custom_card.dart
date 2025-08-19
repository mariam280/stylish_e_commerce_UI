import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.aspectRatio, this.child});
  final double aspectRatio;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Card(
        color: Colors.white,
        elevation: 6, // درجة الظل
        shadowColor: Colors.black.withValues(alpha: 0.3),
        child: child,
      ),
    );
  }
}
