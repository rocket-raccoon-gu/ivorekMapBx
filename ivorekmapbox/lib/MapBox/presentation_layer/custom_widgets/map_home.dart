import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:ivorekmapbox/MapBox/constants/constants.dart';
import 'package:latlong2/latlong.dart';

class MapHome extends StatefulWidget {
  
  const MapHome({super.key});

  @override
  State<MapHome> createState() => _MapHomeState();
}

class _MapHomeState extends State<MapHome> {

  

  List<Marker> pointmarkers = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addmarker();
  }

  void addmarker() {
    for (var i = 0; i < markers.length; i++) {
      pointmarkers.add(Marker(
            width: 80,
            height: 80,  
            point: LatLng(markers[i].latitude, markers[i].longitude),
             child: Icon(Icons.location_on_sharp,size: 50.0,color: Colors.red,)
      ));
    }
  }


  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: const MapOptions(
      initialCenter: LatLng(25.21933500250424, 51.502634283030545),
      initialZoom: 13.0
      
    ), 
    
    children: [
      TileLayer(
            urlTemplate: urlTemplate,
            additionalOptions: const {
              'accessToken':accessToken,
              'id':layerid
            },
           ),
           MarkerLayer(
            markers: pointmarkers),
            PolylineLayer(polylines: [
              Polyline(points: markers,strokeWidth: 5.0)
            ])
    ]);
  }
}