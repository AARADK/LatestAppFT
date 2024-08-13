// lib/features/compatibility/ui/components/circle_image.dart

import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final String assetPath;
  final double screenWidth;

  CircleImage({required this.assetPath, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.3,
      height: screenWidth * 0.3,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Color(0xFFFF9933),
          width: 2,
        ),
      ),
      child: Center(
        child: Image.asset(
          assetPath,
          width: screenWidth * 0.2,
          height: screenWidth * 0.2,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
