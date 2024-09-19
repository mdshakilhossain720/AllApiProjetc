import 'dart:typed_data';

import 'package:apiintegrationall/data/services/get_api_services.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({super.key});

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () async {
              final ImagePicker picker =ImagePicker();
              final XFile? image=await picker.pickImage(source: ImageSource.gallery);
              if (image != null){
                Uint8List bytes=await image.readAsBytes();
                GetApiServices().uploadImage(bytes,image.name).then((value){
                  setState(() {

                  });

                });

              }

            }, child:Text("Upload Image",style: TextStyle(
              fontSize: 18,color: Colors.white,
            ),))
          ],
        ),
      ),

    );
  }
}
