//flutter
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//packages
import 'package:get/get.dart';

class EmiCalculatorController extends GetxController {
  ScrollController scrollController = ScrollController();

  //TextEditing
  var loanamount1 = TextEditingController();
  var interestrate1 = TextEditingController();
  var duration1 = TextEditingController();
  var floanamount1 = FocusNode();
  var finterestrate1 = FocusNode();
  var fduration1 = FocusNode();
  var loanamount2 = TextEditingController();
  var interestrate2 = TextEditingController();
  var duration2 = TextEditingController();
  var floanamount2 = FocusNode();
  var finterestrate2 = FocusNode();
  var fduration2 = FocusNode();

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void resetForm() {
    loanamount1.text = '';
  }
}
