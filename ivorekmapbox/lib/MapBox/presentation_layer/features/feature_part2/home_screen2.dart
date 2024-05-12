
import 'package:flutter/material.dart';
import 'package:ivorekmapbox/MapBox/presentation_layer/custom_widgets/map_home2.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapAdvanced(),
    );
  }
}