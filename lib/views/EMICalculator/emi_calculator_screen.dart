//flutter
import 'package:credit_app/controllers/emi_calculator_controller.dart';
import 'package:credit_app/widget/appBarWidget.dart';
import 'package:credit_app/widget/baseRoute.dart';
import 'package:credit_app/widget/common_padding.dart';
import 'package:credit_app/widget/custom_textformfield.dart';
import 'package:credit_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmiCalculatorScreen extends BaseRoute {
  EmiCalculatorScreen({a, o}) : super(a: a, o: o, r: 'EmiCalculatorScreen');
  final EmiCalculatorController emiCalculatorController = Get.find<EmiCalculatorController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        height: 80,
        appbarPadding: 0,
        title: Text('EMI Calculator'),
        centerTitle: true,
      ),
      body: GetBuilder<EmiCalculatorController>(
        builder: (_) => (CommonPadding(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'Loan Amount',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: CustomTextFormField(
                          hintText: "enter loan amount",
                          textEditingController: emiCalculatorController.loanamount1,
                          obscureText: false,
                          key: key,
                          textInputType: TextInputType.numberWithOptions(signed: true, decimal: true),
                          onEditingComplete: () {
                            FocusScope.of(context).requestFocus(
                              emiCalculatorController.finterestrate1,
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'Interest Rate (%)',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: CustomTextFormField(
                          hintText: "enter interest rate",
                          textEditingController: emiCalculatorController.interestrate1,
                          focusnode: emiCalculatorController.finterestrate1,
                          obscureText: false,
                          key: key,
                          textInputType: TextInputType.numberWithOptions(signed: true, decimal: true),
                          onEditingComplete: () {
                            FocusScope.of(context).requestFocus(
                              emiCalculatorController.fduration1,
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'Tenure (Months)',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: CustomTextFormField(
                          hintText: "enter duration",
                          textEditingController: emiCalculatorController.duration1,
                          focusnode: emiCalculatorController.fduration1,
                          obscureText: false,
                          key: key,
                          textInputType: TextInputType.numberWithOptions(signed: true, decimal: true),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: PrimaryTextButton(
                          text: "Calculate",
                          voidCallback: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
