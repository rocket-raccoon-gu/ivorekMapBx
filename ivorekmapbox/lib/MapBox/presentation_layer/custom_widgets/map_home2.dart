import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:ivorekmapbox/MapBox/constants/constants.dart';
import 'package:ivorekmapbox/MapBox/presentation_layer/custom_widgets/marker_icon.dart';
import 'package:latlong2/latlong.dart';

class MapAdvanced extends StatefulWidget {
  const MapAdvanced({super.key});

  @override
  State<MapAdvanced> createState() => _MapAdvancedState();
}

class _MapAdvancedState extends State<MapAdvanced> {


List<Marker> pointmarkers = [];

List<LatLng> polymarks = [];


void addmarker(double latitude,double longitude) async {


     pointmarkers.add(
      Marker(
        width: 80,
        height: 80,  
        point: LatLng(latitude, longitude),
        child: MarkerIconWidget()
          )
     );

     polymarks.add(
      LatLng(latitude, longitude)
     );
}

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
      initialCenter: LatLng(25.21933500250424, 51.502634283030545),
      initialZoom: 13.0,
      onTap: (tapPosition, point) {
        setState(() {
          addmarker(point.latitude, point.longitude);
        });
      },
      ),
      children: [
        TileLayer(
            urlTemplate: urlTemplate,
            additionalOptions: const {
              'accessToken':accessToken,
              'id':layerid
            },
            
           ),

           MarkerLayer(markers: pointmarkers),
           
           PolylineLayer(polylines:[
            Polyline(points: polymarks,strokeWidth: 5.0)
           ])
      ],
      );
  }
}
