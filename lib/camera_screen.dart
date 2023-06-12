// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names, avoid_print

import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          imageFile != null
              ? Image.file(imageFile!)
              : Icon(
                  Icons.camera_enhance_rounded,
                  color: Colors.green,
                  size: MediaQuery.of(context).size.width * .6,
                ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ElevatedButton(
              onPressed: () async {
                await uplaodImage();
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.cyan),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
                  textStyle:
                      MaterialStateProperty.all(const TextStyle(fontSize: 16))),
              child: const Text('capture here'),
            ),
          ),
        ],
      ),
    );
  }

  uplaodImage() async {
    var image = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxHeight: 1080,
      maxWidth: 1080,
    );

    if (image != null) {
      setState(() {
        imageFile = File(image.path);
      });
      var nameImage = p.basename(image.path);
      var refStorage = FirebaseStorage.instance.ref("images/$nameImage");
      await refStorage.putFile(imageFile!);
      var url = await refStorage.getDownloadURL();
      print("url : $url");
    } else {
      print('please choose image');
    }
  }
}
