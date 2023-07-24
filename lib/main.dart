import 'package:flutter/material.dart';
import 'package:jaydip_flutter/Statemanagement/ProviderStateManagement/Homepage.dart';
import 'package:jaydip_flutter/Statemanagement/ProviderStateManagement/Numberchangeprovider.dart';
import 'package:provider/provider.dart';

void main() async {
  /*
  Keys of Android Studio :-

  MD5: ED:78:D8:8F:EF:EE:21:B6:D0:21:C5:AB:13:A8:9B:B6
  SHA1: 8D:EA:4C:17:C5:C4:51:FD:1E:88:4E:03:CB:2F:11:BF:25:97:84:53
  SHA-256: DE:E7:0B:30:5A:BD:E7:55:0C:D1:DC:94:10:6B:06:07:33:7A:AA:2F:C6:8F:5C:14:0C:FA:67:88:41:00:7A:28
  */

  /* For Device Preview in Application Purpose

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (BuildContext context) => MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        home: ResponsiveApp(),
        */ /*theme: ThemeData(
        scaffoldBackgroundColor: Colors.black87,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.amber,
        ),
      ),
      ),
    ),
  );*/

  // WidgetsFlutterBinding.ensureInitialized();
  // MobileAds.instance.initialize();
  // runApp(
  //   MaterialApp(
  //     theme: ThemeData(
  //       pageTransitionsTheme: PageTransitionsTheme(
  //         builders: {TargetPlatform.android: CupertinoPageTransitionsBuilder()},
  //       ),
  //       appBarTheme: AppBarTheme(backgroundColor: CupertinoColors.systemGreen),
  //       useMaterial3: true,
  //     ),
  //     debugShowCheckedModeBanner: false,
  //     home: ImagePickerApp(),
  //   ),
  // );

  /* For Get x State Management Purpose

  runApp(
    GetMaterialApp(
      translations: MultiLanguage(),
      locale: Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      home: ChangeLanguages(),
    ),
  );
  // */

// /* For Provider State Management Purpose
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Numberchangeprovider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      ),
    ),
  );
  // */
}

text(name, color, size, weight) {
  return Text(
    '$name',
    style: TextStyle(
      color: color,
      fontSize: size,
      fontWeight: weight,
    ),
  );
}

appbar(txt, bgcolor) {
  var apb = AppBar(
    centerTitle: true,
    title: Text(
      '$txt',
      style: TextStyle(
        fontSize: 20,
        color: bgcolor,
      ),
    ),
  );
  return apb;
}
