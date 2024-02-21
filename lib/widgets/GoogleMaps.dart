// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:jaydip_flutter/main.dart';
// import 'package:location/location.dart';
//
// class GoogleMapsApp extends StatefulWidget {
//   const GoogleMapsApp({super.key});
//
//   @override
//   State<GoogleMapsApp> createState() => _GoogleMapsAppState();
// }
//
// class _GoogleMapsAppState extends State<GoogleMapsApp> {
//   var cp = CameraPosition(
//     target: LatLng(37.42796133580664, -122.085749655962),
//     zoom: 15,
//   );
//
//   GoogleMapController? controller;
//   Location? location = Location();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: appbar(
//         'Google Maps',
//         Colors.white,
//       ),
//       body: GoogleMap(
//           initialCameraPosition: cp,
//           mapType: MapType.hybrid,
//           onMapCreated: onMapCreated,
//           onTap: (value) {
//             controller!.animateCamera(
//               CameraUpdate.newLatLng(value),
//             );
//           }),
//     );
//   }
//
//   onMapCreated(GoogleMapController controller) {
//     this.controller = controller;
//
//     location!.onLocationChanged.listen(
//       (event) {
//         this.controller!.animateCamera(
//               CameraUpdate.newCameraPosition(
//                 CameraPosition(
//                   target: LatLng(
//                     event.latitude!,
//                     event.longitude!,
//                   ),
//                 ),
//               ),
//             );
//       },
//     );
//   }
// }
