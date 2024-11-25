import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Utils/Const/aap_colors.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key,
    required this.text1,
    required this.text2,
  });

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft, // Aligns the entire RichText to the left
      child: RichText(
        textAlign: TextAlign.start, // Ensures text aligns left within the RichText
        text: TextSpan(
          children: [
            TextSpan(
              text: '$text1: ',
              style: GoogleFonts.montserrat(
                fontSize: 16,
                color: AppColors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            TextSpan(
              text: text2,
              style: GoogleFonts.montserrat(
                fontSize: 16,
                color: AppColors.black.withOpacity(0.9),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
