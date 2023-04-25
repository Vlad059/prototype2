import 'style_service.dart';

import '../../../../assets/styles/app_styles.dart';

class StyleService extends IStyleService {
  bool _isLightTheme = true;

  IAppTextStyles lightTextStyles = LightAppTextStyles();

  IAppTextStyles darkTextStyles = DarkAppTextStyles();

  IAppColors lightColors = LightAppColors();

  IAppColors darkColors = DarkAppColors();

  @override
  void switchTheme() {
    _isLightTheme = !_isLightTheme;

    notifyListeners();
  }

  @override
  IAppTextStyles get textStyles => _isLightTheme ? lightTextStyles : darkTextStyles;

  @override
  IAppColors get colors => _isLightTheme ? lightColors : darkColors;
}