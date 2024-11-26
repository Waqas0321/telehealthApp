import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:telehealth_app/App/Controllers/message_controller.dart';
import 'package:telehealth_app/App/Utils/Const/app_images.dart';
import 'package:telehealth_app/App/Widgets/Customs/custom_textfield.dart';
import '../../Utils/Const/aap_colors.dart';
import '../../Utils/Const/app_sizes.dart';
import '../../Widgets/Customs/custom_contact_container.dart';
import '../../Widgets/Customs/custom_leading_button.dart';
import '../../Widgets/Customs/custom_text_widget.dart';

class MessagesScreen extends StatelessWidget {
  MessagesScreen(
      {super.key, this.imagePath = AppImages.testImage, this.name = "Anee"});

  final String imagePath;
  final String name;
  final MessagesController controller = Get.put(MessagesController());

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Gap(18),
          CustomContactContainer(
            name: name,
            imagePath: imagePath,
            fontSize: 28,
            fontweight: FontWeight.w800,
          ),
          Expanded(
            child: Obx(
              () => ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                itemCount: controller.messages.length,
                itemBuilder: (context, index) {
                  final message = controller.messages[index];
                  final isMe = message.isMe;
                  final time = DateFormat('hh:mm a').format(message.timestamp);
                  return Align(
                    alignment:
                        isMe ? Alignment.centerRight : Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: isMe
                            ? CrossAxisAlignment.end
                            : CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              !isMe
                                  ? Container(
                                      clipBehavior: Clip.antiAlias,
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image:
                                                  AssetImage(message.image),
                                              fit: BoxFit.fill)),
                                    )
                                  : const SizedBox.shrink(),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(
                                    left: isMe
                                        ? AppSizes().getWidthPercentage(6)
                                        : 6,
                                    right: !isMe
                                        ? AppSizes().getWidthPercentage(6)
                                        : 6,
                                    top: 4,
                                    bottom: 4,
                                  ),
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              AppColors.black.withOpacity(0.06),
                                          blurRadius: 2,
                                          spreadRadius: 2)
                                    ],
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    message.text,
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ),
                              ),
                              isMe
                                  ? Container(
                                      clipBehavior: Clip.antiAlias,
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image:
                                                  AssetImage(message.image),
                                              fit: BoxFit.fill)),
                                    )
                                  : const SizedBox.shrink(),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: isMe
                                ? MainAxisAlignment.start
                                : MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: isMe ? 30 : 0, right: !isMe ? 30 : 0),
                                child: CustomTextWidget(
                                  text: time,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  textColor: AppColors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    controller: controller.messageController,
                    hintText: "",
                    prefixIcons: true,
                    isSuffixIcon: true,
                    sendIcon: true,
                    sendOnPress: () {
                      controller.sendMessage(controller.messageController.text);
                      controller.messageController.clear();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
