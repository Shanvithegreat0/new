import 'package:kisaanpragati/core/app_export.dart';
import 'package:kisaanpragati/presentation/booking_completed_page/models/booking_completed_model.dart';
import 'package:flutter/material.dart';

class BookingCompletedController extends GetxController {
  BookingCompletedController(this.bookingCompletedModelObj);

  TextEditingController statusSuccessController = TextEditingController();

  TextEditingController statusSuccessOneController = TextEditingController();

  Rx<BookingCompletedModel> bookingCompletedModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    statusSuccessController.dispose();
    statusSuccessOneController.dispose();
  }
}
