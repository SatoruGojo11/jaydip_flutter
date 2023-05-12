import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';

class ExtendedImageApp extends StatefulWidget {
  const ExtendedImageApp({Key? key}) : super(key: key);

  @override
  State<ExtendedImageApp> createState() => _ExtendedImageAppState();
}

class _ExtendedImageAppState extends State<ExtendedImageApp> {
  var _imagekey = GlobalKey<ExtendedImageEditorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Extended Image App'),
      ),
      body: ExtendedImage.asset('assets/image/6.jpg',
          fit: BoxFit.contain,
          mode: ExtendedImageMode.editor,
          extendedImageEditorKey: _imagekey, initEditorConfigHandler: (state) {
        return EditorConfig(
          maxScale: 8.0,
          hitTestSize: 20.0,
          cropRectPadding: EdgeInsets.all(10.0),
        );
      }),
      bottomNavigationBar: SingleChildScrollView(
        child: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () => _imagekey.currentState!.rotate(right: true),
              icon: Icon(Icons.rotate_right),
              label: Text('Rotate Right'),
            ),
            ElevatedButton.icon(
              onPressed: () => _imagekey.currentState!.reset(),
              icon: Icon(Icons.restore),
              label: Text('Reset'),
            ),
            ElevatedButton.icon(
              onPressed: () => _imagekey.currentState!.rotate(right: false),
              icon: Icon(Icons.rotate_left),
              label: Text('Rotate Left'),
            ),
          ],
        ),
      ),
    );
  }
}
