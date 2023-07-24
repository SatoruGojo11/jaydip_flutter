


// Error
// LateInitializationError: Field 's1' has not been initialized.








// import 'dart:io';
// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import 'package:gallery_saver/gallery_saver.dart';
// import 'package:image_picker/image_picker.dart';
//
// class ImagePickerApp extends StatefulWidget {
//   const ImagePickerApp({Key? key}) : super(key: key);
//
//   @override
//   State<ImagePickerApp> createState() => _ImagePickerAppState();
// }
//
// class _ImagePickerAppState extends State<ImagePickerApp> {
//   ImagePicker _imagePicker = ImagePicker();
//   File? imageFile;
//   late String s1;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image picker App'),
//         backgroundColor: Colors.amber,
//       ),
//       body: ListView(
//         children: [
//           ButtonBar(
//             alignment: MainAxisAlignment.center,
//             children: [
//               IconButton(
//                 onPressed: () {
//                   imagePickFromCamera();
//                 },
//                 icon: Icon(Icons.camera_alt,size: 25,),
//               ),
//               IconButton(
//                 onPressed: () {
//                   pickImageFromGallery();
//                 },
//                 icon: Icon(Icons.photo_camera_back,size: 25,),
//               ),
//             ],
//           ),
//           imageFile == null ? Placeholder() : Image.file(imageFile!),
//           SizedBox(height: 20),
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.black54,
//               foregroundColor: Colors.white
//               ),
//             onPressed: saveimage(),
//             child: Text(
//               'Save Image',
//               style: TextStyle(color: Colors.green, fontSize: 25.0),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   imagePickFromCamera() async {
//     XFile? pickImage = await _imagePicker.pickImage(source: ImageSource.camera);
//     setState(() {
//       imageFile = File(pickImage!.path);
//     });
//   }
//
//   pickImageFromGallery() async {
//     XFile? pickImage =
//         await _imagePicker.pickImage(source: ImageSource.gallery);
//     setState(() {
//       imageFile = File(pickImage!.path);
//     });
//
//   }
//
//   saveimage(){
//     GallerySaver.saveImage(s1).then((value) {
//       setState(() {
//         print('Image Saved');
//       });
//     });
//   }
//
// }
