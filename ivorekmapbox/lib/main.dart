import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ivorekmapbox/MapBox/presentation_layer/features/feature_part1/home_screen1.dart';
import 'package:ivorekmapbox/MapBox/presentation_layer/features/feature_part2/home_screen2.dart';
import 'package:permission_handler/permission_handler.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  


  Future<bool> _handleLocationPermission() async {
    var status = await Permission.location.status;

    if (status.isDenied) {
      //Request Permission if granted
      await Permission.location.request();

      // You can handle the result of the permission request here
      var newstatus = await Permission.location.status;
      if (newstatus.isGranted) {
        log("location permission granted");
      } else {
        log("location permission not granted");
      }
    } else {
       await Permission.location.request();

        // You can handle the result of the permission request here
        var newstatus = await Permission.location.status;

         if (newstatus.isGranted) {
        log("location permission granted");
      } else {
        log("location permission not granted");
      }
    }

    return true;
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _handleLocationPermission();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen1()));
                
                  },
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.blueAccent
                    ),
                    child: const Center(child: Text("Part 1",style: TextStyle(color: Colors.white,fontSize: 16),),),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen2()));
                    },
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.blueAccent
                      ),
                      child: const Center(child: Text("Part 2",style: TextStyle(color: Colors.white,fontSize: 16)),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
