import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/Const/aap_colors.dart';
import 'custom_text_widget.dart';
class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key, required this.text1, required this.text2,
    this.isEditable = false,
     this.controller,
  });
  final String text1;
  final String text2;
  final bool isEditable;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextWidget(
            text: text1,
            fontWeight: FontWeight.w500,
            fontSize: 18,
            textColor: AppColors.black,
          ),
          isEditable?SizedBox(
            height: 26,
            child: TextFormField(
              controller: controller,
              cursorColor: AppColors.bluish,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: AppColors.black
              ),
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 0, vertical: 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  hintText:text2,
                  hintStyle: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: AppColors.black.withOpacity(0.5)
                  )
              ),
            ),
          ): CustomTextWidget(
            text: text2,
            fontWeight: FontWeight.w500,
            fontSize: 17,
            textColor: AppColors.black.withOpacity(0.5),
          ),

        ],),
    );
  }
}