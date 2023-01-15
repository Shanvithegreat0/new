import '../controller/carousel_one_controller.dart';
import '../models/b_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kisaanpragati/core/app_export.dart';

// ignore: must_be_immutable
class BItemWidget extends StatelessWidget {
  BItemWidget(this.bItemModelObj);

  BItemModel bItemModelObj;

  var controller = Get.find<CarouselOneController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: getHorizontalSize(
            311.00,
          ),
          child: Text(
            "msg_travel_safely".tr,
            maxLines: null,
            textAlign: TextAlign.center,
            style: AppStyle.txtUrbanistRomanBold32.copyWith(
              height: getVerticalSize(
                0.92,
              ),
            ),
          ),
        ),
        Container(
          width: getHorizontalSize(
            368.00,
          ),
          margin: getMargin(
            top: 23,
          ),
          child: Text(
            "msg_lorem_ipsum_dol3".tr,
            maxLines: null,
            textAlign: TextAlign.center,
            style: AppStyle.txtUrbanistRegular16.copyWith(
              letterSpacing: getHorizontalSize(
                0.20,
              ),
              height: getVerticalSize(
                1.17,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
