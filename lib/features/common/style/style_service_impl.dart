import 'style_service.dart';

import '../../../assets/styles/app_styles.dart';

class StyleService extends IStyleService {
  bool _isLightTheme = true;

  AppTextStyles lightTextStyles = AppTextStyles();

  AppTextStyles darkTextStyles = DarkAppTextStyles();

  AppColors lightColors = AppColors();

  AppColors darkColors = DarkAppColors();

  @override
  void switchTheme() {
    _isLightTheme = !_isLightTheme;

    notifyListeners();
  }

  @override
  AppTextStyles get textStyles => _isLightTheme ? lightTextStyles : darkTextStyles;

  @override
  AppColors get colors => _isLightTheme ? lightColors : darkColors;
}