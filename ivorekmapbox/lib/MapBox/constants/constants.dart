
import 'package:latlong2/latlong.dart';

const accessToken = 'pk.eyJ1IjoiaGFyZWVzYWdvbmxpbmUiLCJhIjoiY2x3Mmd0NnoxMHN4ODJscXNtY3AxbzA1OCJ9.WHr_jTM0RgeP3shrhJ-eLQ';

const urlTemplate = 'https://api.mapbox.com/styles/v1/hareesagonline/clw2hotxt02j701qpefmugn84/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiaGFyZWVzYWdvbmxpbmUiLCJhIjoiY2x3Mmd0NnoxMHN4ODJscXNtY3AxbzA1OCJ9.WHr_jTM0RgeP3shrhJ-eLQ';

const layerid = 'mapbox.satellite';


var markers = <LatLng> [
    LatLng(25.21933500250424, 51.502634283030545),
    LatLng(25.284392, 51.423969),
    LatLng(25.345703, 51.450233),

  ];