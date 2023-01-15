import 'package:kisaanpragati/core/app_export.dart';
import 'package:kisaanpragati/presentation/booking_cancelled_page/models/booking_cancelled_model.dart';
import 'package:flutter/material.dart';

class BookingCancelledController extends GetxController {
  BookingCancelledController(this.bookingCancelledModelObj);

  TextEditingController statusErrorComponentAlertController =
      TextEditingController();

  TextEditingController statusErrorComponentAlertOneController =
      TextEditingController();

  Rx<BookingCancelledModel> bookingCancelledModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    statusErrorComponentAlertController.dispose();
    statusErrorComponentAlertOneController.dispose();
  }
}
