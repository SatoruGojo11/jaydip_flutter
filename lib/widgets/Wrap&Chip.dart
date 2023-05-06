import 'package:flutter/material.dart';

class WrapChipApp extends StatefulWidget {
  const WrapChipApp({Key? key}) : super(key: key);

  @override
  State<WrapChipApp> createState() => _WrapChipAppState();
}

class _WrapChipAppState extends State<WrapChipApp> {

  var images = [
    'https://images.hdqwalls.com/download/i-am-iron-man-4k-ky-1920x1080.jpg',
    'https://images.hindustantimes.com/rf/image_size_630x354/HT/p2/2019/04/17/Pictures/_b4fc009c-60e8-11e9-a01d-452d93af50a1.jpg',
    'https://static.wikia.nocookie.net/marveldatabase/images/6/63/Stephen_Strange_%28Earth-199999%29_from_Doctor_Strange_in_the_Multiverse_of_Madness_Promo_001.jpg/revision/latest?cb=20220504144907',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-iOzzdUsAlkxkwlUgw4Pk7VoO0p2xj4FP_iceHSqxLvqvEoMgbSHpo1zKOTnT3T6N8c7zCU23Q34&usqp=CAU&ec=48665701',
    'https://static.toiimg.com/photo/msid-92807013/92807013.jpg?69816',
    'https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters/large/800/The-Hulk.The-Incredible-Hulk.webp',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJkbcYrNg617IE3yMVuArnA6vLzgHpDXJ4Zo98hgUkE-IhCvcDhmDIfI8Q5w7WQgRV4IHSIGmA9zw&usqp=CAU&ec=48665701',
    'https://media1.popsugar-assets.com/files/thumbor/NtvBBOmcUlLTALeSXcv3SgXQ48Q/526x0:1662x1136/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2022/08/11/195/n/48559432/cefea5ed62f5cbe914c599.75454654_/i/i-am-groot-easter-eggs.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wrap & Chip App',
          style: TextStyle(
            fontSize: 30,
            color: Colors.deepOrange,
          ),
        ),
      ),
      body: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        spacing: 10,
        runSpacing: 10,
        direction: Axis.horizontal,
        children: [
          // Chip(
          //   label: Text(
          //     'Iron Man',
          //   ),
          //   avatar: CircleAvatar(
          //     child: Text('I'),
          //   ),
          // ),
          // Chip(
          //   label: Text(
          //     'Black Panther',
          //   ),
          //   avatar: CircleAvatar(
          //     child: Text('B'),
          //   ),
          // ),
          // Chip(
          //   label: Text(
          //     'Captain America',
          //   ),
          //   avatar: CircleAvatar(
          //     child: Text('C'),
          //   ),
          // ),
          'Iron Man',
          'Thor',
          'Dr. Strange',
          'Black Widow',
          'Captain Amercia',
          'Hulk',
          'Spider Man',
          'Groot',
        ]
            .map(
              (e) => Chip(
                elevation: 25.0,
                autofocus: true,
                backgroundColor: Colors.yellow,
                label: Text(e),
                onDeleted: (){
                  print('Delete');
                },
                labelStyle:
                    TextStyle(fontSize: 20, color: Colors.deepOrangeAccent),
                avatar: CircleAvatar(
                  child: Image.network(images[0]),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
