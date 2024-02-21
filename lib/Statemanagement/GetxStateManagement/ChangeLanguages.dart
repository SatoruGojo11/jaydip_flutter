import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLanguages extends StatefulWidget {
  const ChangeLanguages({super.key});

  @override
  State<ChangeLanguages> createState() => _ChangeLanguagesState();
}

class _ChangeLanguagesState extends State<ChangeLanguages> {
  List<Map<String, dynamic>> lgs = [
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'ગુજરાતી', 'locale': Locale('gu', 'IN')},
    {'name': 'Chinese', 'locale': Locale('ch', 'CH')},
    {'name': 'Japanese', 'locale': Locale('jp', 'JP')},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Multi Language App',
          style: TextStyle(
            color: Colors.red,
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'name'.tr,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              'surname'.tr,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              'age'.tr,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(
                          'Choose Language...',
                          style: TextStyle(fontSize: 25),
                        ),
                        content: Container(
                          width: double.maxFinite,
                          child: ListView.separated(
                            shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  child: Text(lgs[index]['name']),
                                  onTap: () {
                                    Get.back();
                                    Get.updateLocale(lgs[index]['locale']);
                                  },
                                );
                              },
                              separatorBuilder: (context, index) => Divider(
                                    thickness: 3,
                                  ),
                              itemCount: lgs.length),
                        ),
                      );
                    });
              },
              child: Text('Change Language'),
            ),
          ],
        ),
      ),
    );
  }
}
