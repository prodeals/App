import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class verify_imagepicker extends StatefulWidget {
  const verify_imagepicker({Key? key}) : super(key: key);

  @override
  State<verify_imagepicker> createState() => _verify_imagepickerState();
}

class _verify_imagepickerState extends State<verify_imagepicker> {
  Uint8List? _image;
  File? selectedImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        imagePicker(context);
      },
      child: Container(
        height: 200,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[300],
        ),
        child: Stack(
          children: [
            if (_image != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.memory(
                  _image!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            if (_image == null)
              const Center(
                child: Icon(
                  Icons.photo_camera_back_outlined,
                  color: Colors.grey,
                  size: 50,
                ),
              ),
          ],
        ),
      ),
    );
  }

  void imagePicker(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (builder) {
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 4.5,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _pickImageFromGallery();
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.image,
                            size: 70,
                          ),
                          Text("Gallery"),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _pickImageFromCamera();
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.camera_alt_sharp,
                            size: 70,
                          ),
                          Text("Camera"),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _pickImageFromGallery() async {
    final imagePicker = ImagePicker();
    final pickedImage =
        await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedImage == null) return;

    final imageFile = File(pickedImage.path);
    final imageBytes = await imageFile.readAsBytes();

    setState(() {
      selectedImage = imageFile;
      _image = Uint8List.fromList(imageBytes);
    });

    Navigator.of(context).pop();
  }

  Future<void> _pickImageFromCamera() async {
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(source: ImageSource.camera);

    if (pickedImage == null) return;

    final imageFile = File(pickedImage.path);
    final imageBytes = await imageFile.readAsBytes();

    setState(() {
      selectedImage = imageFile;
      _image = Uint8List.fromList(imageBytes);
    });

    Navigator.of(context).pop();
  }
}
