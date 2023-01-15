import '../carousel_one_screen/widgets/b_item_widget.dart';
import 'controller/carousel_one_controller.dart';
import 'models/b_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kisaanpragati/core/app_export.dart';
import 'package:kisaanpragati/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselOneScreen extends GetWidget<CarouselOneController> {
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
              CustomImageView(
                imagePath: ImageConstant.kisaanji,
                height: getVerticalSize(
                  420.00,
                ),
                width: getHorizontalSize(
                  428.00,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 52,
                ),
                child: Obx(
                  () => CarouselSlider.builder(
                    options: CarouselOptions(
                      height: getVerticalSize(
                        150.00,
                      ),
                      initialPage: 0,
                      autoPlay: true,
                      viewportFraction: 1.0,
                      enableInfiniteScroll: false,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        controller.silderIndex.value = index;
                      },
                    ),
                    itemCount:
                        controller.carouselOneModelObj.value.bItemList.length,
                    itemBuilder: (context, index, realIndex) {
                      BItemModel model =
                          controller.carouselOneModelObj.value.bItemList[index];
                      return BItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Obx(
                () => Container(
                  height: getVerticalSize(
                    8.00,
                  ),
                  margin: getMargin(
                    top: 41,
                  ),
                  child: AnimatedSmoothIndicator(
                    activeIndex: controller.silderIndex.value,
                    count:
                        controller.carouselOneModelObj.value.bItemList.length,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 6,
                      activeDotColor: ColorConstant.cyan600,
                      dotColor: ColorConstant.gray800,
                      dotHeight: getVerticalSize(
                        8.00,
                      ),
                      dotWidth: getHorizontalSize(
                        8.00,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  380.00,
                ),
                margin: getMargin(
                  left: 24,
                  top: 40,
                  right: 24,
                  bottom: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.circleBorder61,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomButton(
                      height: 55,
                      width: 380,
                      text: "lbl_next".tr,
                    ),
                    CustomButton(
                      height: 55,
                      width: 380,
                      text: "lbl_skip".tr,
                      margin: getMargin(
                        top: 12,
                      ),
                      variant: ButtonVariant.FillGray800,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
