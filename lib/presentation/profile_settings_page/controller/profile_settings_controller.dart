import 'package:kisaanpragati/core/app_export.dart';import 'package:kisaanpragati/presentation/profile_settings_page/models/profile_settings_model.dart';class ProfileSettingsController extends GetxController {ProfileSettingsController(this.profileSettingsModelObj);

Rx<ProfileSettingsModel> profileSettingsModelObj;

RxBool isSelectedSwitch = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
