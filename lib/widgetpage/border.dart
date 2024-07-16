import 'package:figma_design2/material/colorclass.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
final  borderWidget = OutlineInputBorder(
                      borderSide:  BorderSide(
                        color: AppColors.appColorHintInput,
                        width: 0.5,
                        style: BorderStyle.solid,

                      ),
                      borderRadius: BorderRadius.circular(20)
                    );

//this is for home search textField
final  borderWidgetForHomeSearch = OutlineInputBorder(
    borderSide:  BorderSide(
      color: AppColors.appColorSearch,
      width: 0.5,
      style: BorderStyle.solid,

    ),
    borderRadius: BorderRadius.circular(20)
);

final containerDecoration = BoxDecoration(
    border: Border.all(
      color: AppColors.appColorHintInput,
      width: 0.5,
      style: BorderStyle.solid,
    ),
    borderRadius: BorderRadius.circular(20)
);

final defaultPinTheme = PinTheme(
  width: 75,
  height: 75,
  textStyle: const TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(
      color: AppColors.appColorHintInput,
    ),
    borderRadius: BorderRadius.circular(20),
  ),
);