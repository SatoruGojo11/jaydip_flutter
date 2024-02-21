// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
//
// class GoogleAdsApp extends StatefulWidget {
//   const GoogleAdsApp({super.key});
//
//   @override
//   State<GoogleAdsApp> createState() => _GoogleAdsAppState();
// }
//
// class _GoogleAdsAppState extends State<GoogleAdsApp> {
//   BannerAd? bannerAd;
//   bool isLoaded = false;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     bannerAd = BannerAd(
//         size: AdSize.banner,
//         adUnitId: Platform.isAndroid
//             ? 'ca-app-pub-3940256099942544/6300978111'
//             : 'ca-app-pub-3940256099942544/2934735716',
//         listener: BannerAdListener(onAdLoaded: (ad) {
//           setState(() {
//             isLoaded = true;
//           });
//         }, onAdFailedToLoad: (ad, error) {
//           print(error);
//         }),
//         request: AdRequest());
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Google Ads',
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//       body: isLoaded
//           ? Column(
//         children: [
//           AdWidget(ad: bannerAd!),
//           Text(
//             'Hello Guys,Here is our Ui...',
//             style: TextStyle(
//               fontSize: 25,
//               color: Colors.purple,
//             ),
//           ),
//         ],
//       )
//           : Container(
//         color: Colors.white,
//       ),
//     );
//   }
// }
