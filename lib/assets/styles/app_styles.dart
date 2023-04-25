import 'package:flutter/material.dart';

abstract class IAppTextStyles {
  TextStyle get chargeTimeTextStyle;

  TextStyle get chargeCaptureTextStyle;

  TextStyle get chargeStationNameTextStyle;

  TextStyle get chargeStationSubTextStyle;

  TextStyle get chargeStationSubGrayTextStyle;

  TextStyle get chargeParametersTextStyle;
}

abstract class IAppColors {
  Color get commonBorderColor;

  Color get commonColor;

  Color get commonButtonColor;

  Color get linearProgressBgColor;

  Color get dividerColor;
}

class LightAppTextStyles extends IAppTextStyles  {
  @override
  final TextStyle chargeTimeTextStyle = const TextStyle(
      color: Colors.white,
      fontSize: 30,
      decoration: TextDecoration.none,
      letterSpacing: -1
  );

  @override
  final TextStyle chargeCaptureTextStyle = const TextStyle(
      color: Colors.white,
      fontSize: 12,
      decoration: TextDecoration.none
  );

  @override
  final TextStyle chargeStationNameTextStyle = const TextStyle(
      color: Colors.black,
      fontSize: 18,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w500,
      fontFamily: 'Inter'
  );

  @override
  final TextStyle chargeStationSubTextStyle = const TextStyle(
      color: Colors.black,
      fontSize: 14,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w500,
      fontFamily: 'Inter'
  );

  @override
  final TextStyle chargeStationSubGrayTextStyle = const  TextStyle(
      color: Color.fromRGBO(144, 144, 144, 1),
      fontSize: 14,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w500,
      fontFamily: 'Inter'
  );

  @override
  final TextStyle chargeParametersTextStyle = const TextStyle(
      color: Colors.black,
      fontSize: 14,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter'
  );
}

class DarkAppTextStyles implements IAppTextStyles{
  @override
  final TextStyle chargeTimeTextStyle = const TextStyle(
      color: Colors.white,
      fontSize: 30,
      decoration: TextDecoration.none,
      letterSpacing: -1
  );

  @override
  final TextStyle chargeCaptureTextStyle = const TextStyle(
      color: Colors.white,
      fontSize: 12,
      decoration: TextDecoration.none
  );

  @override
  final TextStyle chargeStationNameTextStyle = const TextStyle(
      color: Colors.black,
      fontSize: 18,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w500,
      fontFamily: 'Inter'
  );

  @override
  final TextStyle chargeStationSubTextStyle = const TextStyle(
      color: Colors.black,
      fontSize: 14,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w500,
      fontFamily: 'Inter'
  );

  @override
  final TextStyle chargeStationSubGrayTextStyle = const TextStyle(
      color: Color.fromRGBO(144, 144, 144, 1),
      fontSize: 14,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w500,
      fontFamily: 'Inter'
  );

  @override
  final TextStyle chargeParametersTextStyle = const TextStyle(
      color: Colors.black,
      fontSize: 14,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter'
  );
}

class LightAppColors extends IAppColors{
  @override
  final Color commonBorderColor = const Color.fromRGBO(4, 127, 197, 1);

  @override
  final Color commonColor = const Color.fromRGBO(0, 86, 145, 1);

  @override
  final Color commonButtonColor = const Color.fromRGBO(91, 164, 217, 1);

  @override
  final Color linearProgressBgColor = const Color.fromRGBO(0, 43, 73, 1);

  @override
  final Color dividerColor = const Color.fromRGBO(217, 217, 217, 1);
}

class DarkAppColors extends IAppColors{
  @override
  final Color commonBorderColor = const Color.fromRGBO(4, 127, 197, 1);

  @override
  final Color commonColor = const Color.fromRGBO(0, 86, 145, 1);

  @override
  final Color commonButtonColor = const Color.fromRGBO(91, 164, 217, 1);

  @override
  final Color linearProgressBgColor = const Color.fromRGBO(0, 43, 73, 1);

  @override
  final Color dividerColor = const Color.fromRGBO(217, 217, 217, 1);
}
