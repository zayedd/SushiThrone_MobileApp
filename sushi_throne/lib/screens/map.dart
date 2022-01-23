import 'dart:async';
import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
 late GoogleMapController mapController;
var myMarkers = HashSet<Marker>();
  final LatLng _center = const LatLng(30.17093067644001, 31.491404350270635);
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
        appBar: AppBar(
          title: const Text('Our Location'),
          backgroundColor: Colors.orange[700],
        ),
        body: GoogleMap(
          onMapCreated: (GoogleMapController googleMapController)
          {
            setState(() {
              myMarkers.add(
                Marker(markerId: MarkerId('1')
               ,position: LatLng(30.17093067644001, 31.491404350270635),),);
            });
          } ,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
          markers: myMarkers,

        ),
    );
  }

}