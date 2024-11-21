import 'package:flutter/material.dart';
import '../../Controllers/conatct_controller.dart';
import '../../Utils/Const/aap_colors.dart';
import '../../Utils/Const/app_sizes.dart';
import '../../Widgets/Customs/custom_contact_container.dart';
import '../../Widgets/Customs/custom_leading_button.dart';
import '../../Widgets/Customs/custom_text_widget.dart';

class ContactScreen extends StatelessWidget {
 ContactScreen({super.key});
ContactController contactController = ContactController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.all(10),
          child: CustomLeadingButton(),
        ),
        title: const CustomTextWidget(
          text: "Contacts",
          fontWeight: FontWeight.w700,
          fontSize: 25,
          textColor: AppColors.bluish,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSizes().getCustomPadding(),
          child: Column(
            children: [
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: contactController.users.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                    childAspectRatio: 1.0,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return CustomContactContainer(name: contactController.users[index].name,imagePath:  contactController.users[index].imagePath,);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
