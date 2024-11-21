import 'package:flutter/material.dart';
import '../Const/aap_colors.dart';

class AppTheme{
  static ThemeData get lightTheme{
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.white,
    );
  }
}