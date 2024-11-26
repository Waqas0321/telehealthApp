import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:telehealth_app/App/Utils/Const/app_images.dart';
import '../../Utils/Const/aap_colors.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.hintText = 'Enter your text',
    required this.controller,
    this.isObsecure = false,
    this.isValidateFun = false,
    this.errorText = "Please fill this field",
    this.isSuffixIcon = false,
    this.sendIcon = true, this.sendOnPress,
    this.prefixIcons = false, this.showEmojisPress, this.openGalleryPress, this.startRecordingPress,
  });

  final String hintText;
  final TextEditingController controller;
  final bool isObsecure;
  final bool isValidateFun;
  final String errorText;
  final bool isSuffixIcon;
  final bool sendIcon;
  final bool prefixIcons;
  final VoidCallback? sendOnPress;
  final VoidCallback? showEmojisPress;
  final VoidCallback? openGalleryPress;
  final VoidCallback? startRecordingPress;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _isObsecure;
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _isObsecure = widget.isObsecure;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextFormField(
        controller: widget.controller,
        cursorColor: AppColors.bluish,
        obscureText: _isObsecure,
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: AppColors.black,
        ),
        decoration: InputDecoration(
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          hintText: widget.hintText,
          hintStyle: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: AppColors.black.withOpacity(0.5),
          ),
          prefixIcon:widget.prefixIcons? SizedBox(
            width: 110,
            child: Row(
              children: [
                Gap(8),
                InkWell(
                    onTap: widget.showEmojisPress,
                    child: SvgPicture.asset(AppImages.emojiIcon)),
                Gap(8),
                InkWell(
                    onTap: widget.openGalleryPress,
                    child: SvgPicture.asset(AppImages.gallaryIcon)),
                Gap(8),
                InkWell(
                    onTap: widget.startRecordingPress,
                    child: SvgPicture.asset(AppImages.miceIcon)),

              ],
            ),
          ):null,
          suffixIcon: widget.isSuffixIcon
              ?widget.sendIcon? GestureDetector(
            onTap: widget.sendOnPress,
            child: Container(
              margin:const EdgeInsets.all(8),
              padding: const EdgeInsets.all(12),
              decoration:const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.purple
              ),
              child: SvgPicture.asset(
                AppImages.sendIcon,
                color: AppColors.white,
              ),
            ),
          ):GestureDetector(
            onTap: () {
              setState(() {
                _isObsecure = !_isObsecure;
              });
            },
            child: Icon(
              _isObsecure
                  ? CupertinoIcons.eye_slash
                  : CupertinoIcons.eye,
              color: AppColors.black.withOpacity(0.5),
            ),
          )
              : null,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return widget.errorText;
          } else {
            return null;
          }
        },
      ),
    );
  }
}
