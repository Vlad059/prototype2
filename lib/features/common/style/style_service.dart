import 'package:flutter/material.dart' show ChangeNotifier;

import '../../../assets/styles/app_styles.dart';

abstract class IStyleService extends ChangeNotifier{
  void switchTheme();

  AppTextStyles get textStyles;

  AppColors get colors;
}