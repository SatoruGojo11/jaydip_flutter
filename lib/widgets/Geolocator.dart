import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class GeolocatorApp extends StatefulWidget {
  const GeolocatorApp({super.key});

  @override
  State<GeolocatorApp> createState() => _GeolocatorAppState();
}

class _GeolocatorAppState extends State<GeolocatorApp> {
  String latitude = '';
  String longitude = '';

  // final Permission _permission;
  PermissionStatus _permissionStatus = PermissionStatus.denied;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      getlocation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Geolocator App'),
        actions: [
          IconButton(
            onPressed: getlocation,
            icon: Icon(
              Icons.refresh_outlined,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Chip(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              label: Text(
                'Latitude :- ${latitude}',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 25,
                ),
              ),
            ),
            Chip(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              label: Text(
                'Latitude :- ${longitude}',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  getlocation() async {
    var ps = await Permission.location.status;
    if (ps.isGranted) {
      var location = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);

      setState(() {
        latitude = '${location.latitude}';
        longitude = '${location.longitude}';
      });
    } else if (ps.isDenied) {
      requestPermission(Permission.location);
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            'Location Permission Required',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    } else {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            'Internet Permission Required',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }
  }

  Future<void> requestPermission(Permission permission) async {
    final status = await permission.request();

    setState(() {
      print(status);
      _permissionStatus = status;
      print(_permissionStatus);
    });
  }
}
