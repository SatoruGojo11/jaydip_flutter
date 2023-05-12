import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerApp extends StatefulWidget {
  const ImagePickerApp({Key? key}) : super(key: key);

  @override
  State<ImagePickerApp> createState() => _ImagePickerAppState();
}

class _ImagePickerAppState extends State<ImagePickerApp> {
  ImagePicker _imagePicker = ImagePicker();
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image picker App'),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        children: [
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  imagePickFromCamera();
                },
                icon: Icon(Icons.camera_alt),
              ),
              IconButton(
                onPressed: () {
                  pickImageFromGallery();
                },
                icon: Icon(Icons.photo_camera_back),
              ),
            ],
          ),
          imageFile == null ? Placeholder() : Image.file(imageFile!),
        ],
      ),
    );
  }

  imagePickFromCamera() async {
    XFile? pickImage = await _imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      imageFile = File(pickImage!.path);
    });
  }

  pickImageFromGallery() async {
    XFile? pickImage =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      imageFile = File(pickImage!.path);
    });
  }
}
