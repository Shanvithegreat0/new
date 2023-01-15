import 'package:kisaanpragati/core/app_export.dart';import 'package:kisaanpragati/presentation/fill_profile_screen/models/fill_profile_model.dart';import 'package:flutter/material.dart';class FillProfileController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController genderController = TextEditingController();

Rx<FillProfileModel> fillProfileModelObj = FillProfileModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); fullNameController.dispose(); genderController.dispose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; fillProfileModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); fillProfileModelObj.value.dropdownItemList.refresh(); } 
 }
