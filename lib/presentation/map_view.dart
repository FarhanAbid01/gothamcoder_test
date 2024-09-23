import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

class MapView extends StatefulWidget {
  const MapView({super.key});

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  LatLng? currentLocation;
  bool isLoading = true;


  @override
  void initState() {
    _getCurrentLocation();
    super.initState();
  }

  Future<void> _getCurrentLocation() async{
    bool serviceEnabled;
    LocationPermission? permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if(!serviceEnabled){
      return;
    }
    permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();
      if(permission == LocationPermission.denied){
        return;
      }
    }
    if(permission == LocationPermission.deniedForever){
      return;
    }
    Position position = await Geolocator.getCurrentPosition();
    setState(() {
      currentLocation = LatLng(position.latitude, position.longitude);
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: isLoading ? Center(child: CircularProgressIndicator()) :
      FlutterMap(
          options: MapOptions(
            initialCenter:  currentLocation??LatLng(0, 0),
            initialZoom: 17.0,
          ),
          children: [
            TileLayer(
                urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: ['a', 'b', 'c']
            ),
            MarkerLayer(markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: currentLocation??LatLng(0, 0),

                  child: Icon(Icons.location_on, color: Colors.red,),

              )
            ])
          ])
      ,
    );
  }
}
