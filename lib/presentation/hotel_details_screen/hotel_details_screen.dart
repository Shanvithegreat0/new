import '../hotel_details_screen/widgets/hotel_details_item_widget.dart';
import 'controller/hotel_details_controller.dart';
import 'models/hotel_details_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kisaanpragati/core/app_export.dart';
import 'package:kisaanpragati/widgets/app_bar/appbar_image.dart';
import 'package:kisaanpragati/widgets/app_bar/custom_app_bar.dart';
import 'package:kisaanpragati/widgets/custom_button.dart';
import 'package:kisaanpragati/widgets/custom_drop_down.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HotelDetailsScreen extends GetWidget<HotelDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  256.00,
                ),
                width: size.width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle6,
                      height: getVerticalSize(
                        256.00,
                      ),
                      width: getHorizontalSize(
                        428.00,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: size.width,
                        decoration: AppDecoration.gradientGray8000001Gray90096,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomAppBar(
                              height: getVerticalSize(
                                56.00,
                              ),
                              leadingWidth: 52,
                              leading: AppbarImage(
                                height: getSize(
                                  28.00,
                                ),
                                width: getSize(
                                  28.00,
                                ),
                                svgPath: ImageConstant.imgArrowdownWhiteA700,
                                margin: getMargin(
                                  left: 24,
                                  top: 11,
                                  bottom: 11,
                                ),
                              ),
                              actions: [
                                AppbarImage(
                                  height: getSize(
                                    28.00,
                                  ),
                                  width: getSize(
                                    28.00,
                                  ),
                                  svgPath: ImageConstant.imgBookmark,
                                  margin: getMargin(
                                    left: 24,
                                    top: 11,
                                    bottom: 11,
                                  ),
                                ),
                                AppbarImage(
                                  height: getSize(
                                    28.00,
                                  ),
                                  width: getSize(
                                    28.00,
                                  ),
                                  svgPath: ImageConstant.imgClock,
                                  margin: getMargin(
                                    left: 20,
                                    top: 11,
                                    right: 24,
                                    bottom: 11,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: getVerticalSize(
                                6.00,
                              ),
                              margin: getMargin(
                                top: 188,
                                bottom: 12,
                              ),
                              child: SmoothIndicator(
                                offset: 0,
                                count: 5,
                                axisDirection: Axis.horizontal,
                                effect: ScrollingDotsEffect(
                                  spacing: 11,
                                  activeDotColor: ColorConstant.cyan600,
                                  dotColor: ColorConstant.blueGray400,
                                  dotHeight: getVerticalSize(
                                    6.00,
                                  ),
                                  dotWidth: getHorizontalSize(
                                    6.00,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 25,
                      bottom: 78,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "msg_royale_presiden".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold32.copyWith(
                            height: getVerticalSize(
                              0.92,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 14,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgLocation,
                                height: getSize(
                                  20.00,
                                ),
                                width: getSize(
                                  20.00,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 8,
                                  top: 1,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "msg_79_place_de_la".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRegular14.copyWith(
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
                        ),
                        Padding(
                          padding: getPadding(
                            top: 41,
                            right: 24,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_gallery_photos".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20.copyWith(
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  bottom: 4,
                                ),
                                child: Text(
                                  "lbl_see_all".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtUrbanistRomanBold16Cyan60001
                                      .copyWith(
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
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(
                            top: 14,
                          ),
                          child: IntrinsicWidth(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle7,
                                  height: getVerticalSize(
                                    100.00,
                                  ),
                                  width: getHorizontalSize(
                                    140.00,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      16.00,
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle8,
                                  height: getVerticalSize(
                                    100.00,
                                  ),
                                  width: getHorizontalSize(
                                    140.00,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      16.00,
                                    ),
                                  ),
                                  margin: getMargin(
                                    left: 12,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle9,
                                  height: getVerticalSize(
                                    100.00,
                                  ),
                                  width: getHorizontalSize(
                                    140.00,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      16.00,
                                    ),
                                  ),
                                  margin: getMargin(
                                    left: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              top: 16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    bottom: 1,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 7,
                                        ),
                                        child: Text(
                                          "".tr,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtUrbanistRomanMedium12
                                              .copyWith(
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
                                Padding(
                                  padding: getPadding(
                                    left: 47,
                                    bottom: 1,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 7,
                                        ),
                                        child: Text(
                                          "lbl_4_bedrooms".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtUrbanistRomanMedium12
                                              .copyWith(
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
                                Padding(
                                  padding: getPadding(
                                    left: 29,
                                    bottom: 1,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 7,
                                        ),
                                        child: Text(
                                          "".tr,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtUrbanistRomanMedium12
                                              .copyWith(
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
                                Padding(
                                  padding: getPadding(
                                    left: 35,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 8,
                                        ),
                                        child: Text(
                                          "".tr,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtUrbanistRomanMedium12
                                              .copyWith(
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
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 31,
                          ),
                          child: Text(
                            "lbl_description".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            370.00,
                          ),
                          margin: getMargin(
                            top: 18,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_lorem_ipsum_dol2".tr,
                                  style: TextStyle(
                                    color: ColorConstant.gray100,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: getHorizontalSize(
                                      0.20,
                                    ),
                                    height: getVerticalSize(
                                      1.17,
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: "lbl_read_more".tr,
                                  style: TextStyle(
                                    color: ColorConstant.cyan60001,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: getHorizontalSize(
                                      0.20,
                                    ),
                                    height: getVerticalSize(
                                      1.17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 4,
                            top: 18,
                          ),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 8,
                                    ),
                                    child: Text(
                                      "".tr,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanMedium12
                                          .copyWith(
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
                              Padding(
                                padding: getPadding(
                                  left: 34,
                                  bottom: 1,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 7,
                                      ),
                                      child: Text(
                                        "".tr,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistRomanMedium12
                                            .copyWith(
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
                              Padding(
                                padding: getPadding(
                                  left: 34,
                                  bottom: 1,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 7,
                                      ),
                                      child: Text(
                                        "".tr,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistRomanMedium12
                                            .copyWith(
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
                              Padding(
                                padding: getPadding(
                                  left: 15,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 8,
                                      ),
                                      child: Text(
                                        "".tr,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistRomanMedium12
                                            .copyWith(
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
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 28,
                          ),
                          child: Text(
                            "lbl_location".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20.copyWith(
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            180.00,
                          ),
                          width: getHorizontalSize(
                            380.00,
                          ),
                          margin: getMargin(
                            top: 15,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage180x380,
                                height: getVerticalSize(
                                  180.00,
                                ),
                                width: getHorizontalSize(
                                  380.00,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    16.00,
                                  ),
                                ),
                                alignment: Alignment.center,
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgLocation,
                                height: getSize(
                                  40.00,
                                ),
                                width: getSize(
                                  40.00,
                                ),
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 30,
                            right: 24,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "lbl_review".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRomanBold20.copyWith(
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgStar12x12,
                                height: getSize(
                                  16.00,
                                ),
                                width: getSize(
                                  16.00,
                                ),
                                margin: getMargin(
                                  left: 12,
                                  top: 3,
                                  bottom: 4,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 4,
                                  top: 2,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "lbl_4_8".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtUrbanistSemiBold16.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.20,
                                    ),
                                    height: getVerticalSize(
                                      1.17,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 8,
                                  top: 4,
                                  bottom: 4,
                                ),
                                child: Text(
                                  "lbl_4_981_reviews".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRegular12.copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.20,
                                    ),
                                    height: getVerticalSize(
                                      1.00,
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: getPadding(
                                  top: 1,
                                  bottom: 2,
                                ),
                                child: Text(
                                  "lbl_see_all".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtUrbanistRomanBold16Cyan60001
                                      .copyWith(
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
                        ),
                        Padding(
                          padding: getPadding(
                            top: 19,
                            right: 24,
                          ),
                          child: Obx(
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
                              itemCount: controller.hotelDetailsModelObj.value
                                  .hotelDetailsItemList.length,
                              itemBuilder: (context, index) {
                                HotelDetailsItemModel model = controller
                                    .hotelDetailsModelObj
                                    .value
                                    .hotelDetailsItemList[index];
                                return HotelDetailsItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                        CustomDropDown(
                          width: 380,
                          focusNode: FocusNode(),
                          hintText: "lbl_more".tr,
                          margin: getMargin(
                            top: 20,
                          ),
                          variant: DropDownVariant.FillGray800,
                          shape: DropDownShape.RoundedBorder27,
                          padding: DropDownPadding.PaddingAll17,
                          fontStyle: DropDownFontStyle.UrbanistRomanBold16,
                          items: controller
                              .hotelDetailsModelObj.value.dropdownItemList,
                          onChanged: (value) {
                            controller.onSelected(value);
                          },
                        ),
                        Container(
                          margin: getMargin(
                            top: 50,
                            right: 24,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.circleBorder29,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 9,
                                  bottom: 9,
                                ),
                                child: Text(
                                  "lbl_292".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtUrbanistRomanBold32Cyan60001
                                      .copyWith(
                                    height: getVerticalSize(
                                      0.92,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 4,
                                  top: 27,
                                  bottom: 13,
                                ),
                                child: Text(
                                  "lbl_night".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRegular14Gray200
                                      .copyWith(
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
                                width: 263,
                                text: "lbl_book_now".tr,
                                margin: getMargin(
                                  left: 16,
                                ),
                                variant: ButtonVariant.OutlineGreenA7003f,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
