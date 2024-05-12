import 'package:flutter/material.dart';
import 'package:ivorekmapbox/MapBox/presentation_layer/custom_widgets/map_home.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapHome(),
    );
  }
}