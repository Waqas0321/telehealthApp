import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Controllers/reminders_controller.dart';
import '../../Utils/Const/aap_colors.dart';
import '../../Widgets/Customs/custom_leading_button.dart';
import '../../Widgets/Customs/custom_reminders_card.dart';
import '../../Widgets/Customs/custom_text_widget.dart';

class RemindersScreen extends StatelessWidget {
  RemindersScreen({super.key});
  RemindersController controller = Get.put(RemindersController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RemindersController>(
      init: controller,
      builder: (controller) {
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
              text: "Reminders",
              fontWeight: FontWeight.w700,
              fontSize: 25,
              textColor: AppColors.bluish,
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(70),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.gray, // Background for unselected tabs
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TabBar(
                    controller: controller.tabController,
                    indicator: BoxDecoration(
                      color: AppColors.bluish, // Selected tab background
                      borderRadius: BorderRadius.circular(12),
                    ),
                    indicatorSize: TabBarIndicatorSize.tab, // Matches tab size
                    labelColor: Colors.white, // Selected tab text color
                    unselectedLabelColor: AppColors.bluish, // Unselected text
                    labelPadding: EdgeInsets.zero,
                    dividerColor: Colors.transparent,
                    unselectedLabelStyle: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                    ),
                    labelStyle: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 16
                    ),// Removes tab padding

                    tabs: const [
                      Tab(text: 'Upcoming'),
                      Tab(text: 'Past'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(
            controller: controller.tabController,
            children: [
              // Upcoming Tab
              ListView.separated(
                padding: const EdgeInsets.all(16.0),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const CustomReminderCard();
                }, separatorBuilder: (BuildContext context, int index) { return Gap(12); },
              ),
              // Past Tab
              const Center(
                child: Text("No past appointments."),
              ),
            ],
          ),
        );
      },
    );
  }
}




