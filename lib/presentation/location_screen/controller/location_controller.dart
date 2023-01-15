import 'package:kisaanpragati/core/app_export.dart';import 'package:kisaanpragati/presentation/location_screen/models/location_model.dart';class LocationController extends GetxController {Rx<LocationModel> locationModelObj = LocationModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
