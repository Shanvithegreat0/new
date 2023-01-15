import 'package:get/get.dart';import 'package:kisaanpragati/data/models/selectionPopupModel/selection_popup_model.dart';class FillProfileModel {DateTime selectedLabelTxt = DateTime.now();

Rx<String> labelTxt = Rx("lbl_date_of_birth".tr);

RxList<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

 }
