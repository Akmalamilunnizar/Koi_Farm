import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:koi_farm/utils/dimensions.dart';

class PcvPage extends StatefulWidget {
  const PcvPage({super.key});

  @override
  State<PcvPage> createState() => _PcvPageState();
}

class _PcvPageState extends State<PcvPage> {
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text('Image Picker'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
                color: Colors.blue,
                child: Text(
                  "Pilih Gambar dari Galeri",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: Dimensions.font16),
                ),
                onPressed: () {
                  _pickImageFromGallery();
                }),
            MaterialButton(
                color: Colors.blue,
                child: Text(
                  "Pilih Gambar dari Kamera",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: Dimensions.font16),
                ),
                onPressed: () {
                  _pickImageFromCamera();
                }),
            SizedBox(
              height: Dimensions.height10,
            ),
            _selectedImage != null
                ? Image.file(_selectedImage!)
                : Text("Tolong pilih sebuah gambar")
          ],
        ),
      ),
    );
  }

  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage!.path);
    });
  }

  Future _pickImageFromCamera() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage!.path);
    });
  }
}
