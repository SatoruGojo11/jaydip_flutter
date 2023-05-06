// ************** Task 1: *****************
import 'package:flutter/material.dart';

class ImageAdd extends StatelessWidget {
  const ImageAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Image Picker',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Narutto :- ',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.green,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/images/narutto.jpg',
                      height: 1000,
                      // fit: BoxFit.fill,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Albert '
                        'Einstein :- ',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.green,
                    ),
                  ),
                  Expanded(
                    child: Image.network(
                      'https://imgs.search.brave.com/aqtp5o-WnRvJcd1Tk5hSaEOo4ncs0mH6xOOR6IWcL9Q/rs:fit:588:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5o/Y0h1Y3R2S1p0bWst/bktkcDNsRzJRSGFG/LSZwaWQ9QXBp',
                      height: 10000,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
*******************  Task 2 :-  **********************

import 'package:flutter/material.dart';

class AddImage extends StatefulWidget
{
  const AddImage({super.key});

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ImagePicker',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        // child: Image.asset(
        //     "assets/images/narutto.jpg",
        //     height: 1000,
        //     width: 800,
        //   fit: BoxFit.fill,
        // ),
        child: Image.network(
          "https://www.xtrafondos.com/wallpapers/naruto-uzumaki-mano-elevada-baryon-mode-8737.jpg",
          height: 2000,
          width: 2000,
          // fit: BoxFit.fill,
        ),
      ),
    );
  }
*/
