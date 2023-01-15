import '../booking_ongoing_page/widgets/listrectangle_item_widget.dart';
import 'controller/booking_ongoing_controller.dart';
import 'models/booking_ongoing_model.dart';
import 'models/listrectangle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kisaanpragati/core/app_export.dart';

// ignore_for_file: must_be_immutable
class BookingOngoingPage extends StatelessWidget {
  BookingOngoingController controller =
      Get.put(BookingOngoingController(BookingOngoingModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Obx(
          () => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: getVerticalSize(
                  20.00,
                ),
              );
            },
            itemCount: controller
                .bookingOngoingModelObj.value.listrectangleItemList.length,
            itemBuilder: (context, index) {
              ListrectangleItemModel model = controller
                  .bookingOngoingModelObj.value.listrectangleItemList[index];
              return ListrectangleItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
