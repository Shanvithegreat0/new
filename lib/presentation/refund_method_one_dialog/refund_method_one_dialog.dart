import 'controller/refund_method_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:kisaanpragati/core/app_export.dart';
import 'package:kisaanpragati/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class RefundMethodOneDialog extends StatelessWidget {
  RefundMethodOneDialog(this.controller);

  RefundMethodOneController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 32,
      ),
      decoration: AppDecoration.fillBluegray90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgGroupCyan600,
            height: getVerticalSize(
              180.00,
            ),
            width: getHorizontalSize(
              185.00,
            ),
            margin: getMargin(
              top: 8,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 31,
            ),
            child: Text(
              "lbl_successfull".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanBold24Cyan60001.copyWith(
                height: getVerticalSize(
                  1.00,
                ),
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              250.00,
            ),
            margin: getMargin(
              top: 21,
            ),
            child: Text(
              "msg_you_have_succes".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtUrbanistRegular18.copyWith(
                letterSpacing: getHorizontalSize(
                  0.20,
                ),
                height: getVerticalSize(
                  1.17,
                ),
              ),
            ),
          ),
          CustomButton(
            height: 58,
            width: 276,
            text: "lbl_ok".tr,
            margin: getMargin(
              top: 33,
            ),
          ),
        ],
      ),
    );
  }
}
