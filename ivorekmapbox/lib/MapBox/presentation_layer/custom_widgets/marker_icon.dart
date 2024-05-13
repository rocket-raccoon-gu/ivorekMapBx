import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MarkerIconWidget extends StatelessWidget {
  const MarkerIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LottieBuilder.asset(
                    'assets/Animation - 1715600715783.json'),
    );
  }
}