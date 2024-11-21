import 'package:flutter/material.dart';

import '../../Utils/Const/aap_colors.dart';
class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(color: AppColors.black.withOpacity(0.2),thickness: 1.3,);
  }
}