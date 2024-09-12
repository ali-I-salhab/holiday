import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holiday/controller/homecontroller.dart';
import 'package:holiday/controller/homepagecontroller.dart';
import 'package:holiday/core/constants/colors.dart';
import 'package:holiday/core/constants/imageassets.dart';
import 'package:holiday/core/constants/route.dart';
import 'package:holiday/core/functions/alertexitapp.dart';
import 'package:holiday/core/functions/customappbar.dart';
import 'package:holiday/view/testwidgets.dart';
import 'package:sizer/sizer.dart';
import 'package:hidable/hidable.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  HomepageController controller = Get.put(HomepageController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: WillPopScope(
      onWillPop: () {
        return alertexitpp();
      },
      child: Scaffold(
          bottomNavigationBar:
              GetBuilder<HomepageController>(builder: (controller) {
            return Hidable(
              controller: controller.scroller,
              child: ConvexAppBar(
                  style: TabStyle.flip,
                  height: 7.h,
                  backgroundColor: AppColors.blue.withOpacity(0.8),
                  onTap: (i) {
                    controller.current_index = i;
                    controller.update();
                  },
                  items: [
                    TabItem(title: 'Search', icon: Icons.search),
                    TabItem(title: 'Favorite', icon: Icons.favorite),
                    TabItem(title: 'My booking', icon: Icons.book),
                    TabItem(title: 'Profile', icon: Icons.person),
                  ]),
            );
          }),
          drawer: Drawer(),
          appBar: customappbar(),
          body: GetBuilder<HomepageController>(
            builder: (controller) {
              return controller.screens[controller.current_index];
            },
          )),
    ));
  }
}
