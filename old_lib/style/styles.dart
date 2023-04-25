import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle chargeTimeTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 30,
    decoration: TextDecoration.none,
    letterSpacing: -1
  );

  static const TextStyle chargeCaptureTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 12,
      decoration: TextDecoration.none
  );

  static const TextStyle chargeStationNameTextStyle = TextStyle(
      color: Colors.black,
      fontSize: 18,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w500,
      fontFamily: 'Inter'
  );

  static const TextStyle chargeStationSubTextStyle = TextStyle(
      color: Colors.black,
      fontSize: 14,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w500,
      fontFamily: 'Inter'
  );

  static const TextStyle chargeStationSubGrayTextStyle = TextStyle(
      color: Color.fromRGBO(144, 144, 144, 1),
      fontSize: 14,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w500,
      fontFamily: 'Inter'
  );

  static const TextStyle chargeParametersTextStyle = TextStyle(
      color: Colors.black,
      fontSize: 14,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter'
  );
}

class AppColors {
  static const Color commonBorderColor = Color.fromRGBO(4, 127, 197, 1);
  
  static const Color commonColor = Color.fromRGBO(0, 86, 145, 1);

  static const Color commonButtonColor = Color.fromRGBO(91, 164, 217, 1);

  static const Color linearProgressBgColor = Color.fromRGBO(0, 43, 73, 1);

  static const Color dividerColor = Color.fromRGBO(217, 217, 217, 1);
}

