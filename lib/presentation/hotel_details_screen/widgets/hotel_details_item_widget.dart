import '../controller/hotel_details_controller.dart';
import '../models/hotel_details_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kisaanpragati/core/app_export.dart';
import 'package:kisaanpragati/widgets/custom_button.dart';

// ignore: must_be_immutable
class HotelDetailsItemWidget extends StatelessWidget {
  HotelDetailsItemWidget(this.hotelDetailsItemModelObj);

  HotelDetailsItemModel hotelDetailsItemModelObj;

  var controller = Get.find<HotelDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 24,
      ),
      decoration: AppDecoration.outlineBlack9000c.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse1,
                height: getSize(
                  48.00,
                ),
                width: getSize(
                  48.00,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    24.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 7,
                  bottom: 3,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_jenny_wilson".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanBold16.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.20,
                        ),
                        height: getVerticalSize(
                          1.17,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 2,
                      ),
                      child: Text(
                        "lbl_dec_10_2024".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtUrbanistRomanMedium12Gray400.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.20,
                          ),
                          height: getVerticalSize(
                            1.00,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomButton(
                height: 32,
                width: 60,
                text: "lbl_5".tr,
                margin: getMargin(
                  top: 8,
                  bottom: 8,
                ),
                shape: ButtonShape.RoundedBorder16,
                padding: ButtonPadding.PaddingT7,
                fontStyle: ButtonFontStyle.UrbanistSemiBold14,
                prefixWidget: Container(
                  margin: getMargin(
                    right: 8,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgStar,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: getHorizontalSize(
              293.00,
            ),
            margin: getMargin(
              top: 16,
              bottom: 1,
            ),
            child: Text(
              "msg_very_nice_and_c".tr,
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRegular14WhiteA700.copyWith(
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
      ),
    );
  }
}
