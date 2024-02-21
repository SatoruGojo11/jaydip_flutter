import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:jaydip_flutter/widgets/MakeCall.dart';

class LocalNotificationApp extends StatefulWidget {
  const LocalNotificationApp({super.key});

  @override
  State<LocalNotificationApp> createState() => _LocalNotificationAppState();
}

class _LocalNotificationAppState extends State<LocalNotificationApp> {
  FlutterLocalNotificationsPlugin? _plugin;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var androidSetting = AndroidInitializationSettings('app_icon');
    var iosSetting = DarwinInitializationSettings();
    var initializationSettings =
        InitializationSettings(android: androidSetting, iOS: iosSetting);

    _plugin = FlutterLocalNotificationsPlugin();
    _plugin!.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (details) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MakeCallApp(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
      ),
      body: Center(
        child: IconButton(
          onPressed: shownotification,
          icon: Icon(Icons.notifications),
        ),
      ),
    );
  }

  shownotification() async {
    var androidDetails = AndroidNotificationDetails("channelId", "channelName");
    var iosDetails = DarwinNotificationDetails();
    var notificationDetails =
        NotificationDetails(android: androidDetails, iOS: iosDetails);

    await _plugin!.show(0, 'First Notification',
        'Kisika Phone aayela he Dekh jaldi', notificationDetails);
  }
}

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Call Page'),
      ),
      body: Center(
        child: Center(
          child: ListTile(
            title: Text(
              'Papa',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
              ),
            ),
            subtitle: Text(
              '+91 9988446611',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
