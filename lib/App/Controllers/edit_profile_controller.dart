import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../Utils/Const/aap_colors.dart';

class EditProfileController extends GetxController{

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  final ImagePicker _picker = ImagePicker();
  Rx<File?> selectedImage = Rx<File?>(null);

  Future<void> pickImage(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt,color: AppColors.bluish,size: 26,),
              title:  Text('Take a Photo',style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.bluish
              ),),
              onTap: () async {
                Navigator.pop(context);
                final XFile? image =
                await _picker.pickImage(source: ImageSource.camera);
                if (image != null) {
                  selectedImage.value = File(image.path);
                }
              },
            ),
            ListTile(
              leading: Icon(Icons.photo_library,color: AppColors.bluish,size: 26,),
              title:  Text('Choose from gallery',style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.bluish
              ),),
              onTap: () async {
                Navigator.pop(context);
                final XFile? image =
                await _picker.pickImage(source: ImageSource.gallery);
                if (image != null) {
                  selectedImage.value = File(image.path);
                }
              },
            ),
          ],
        );
      },
    );}
}