import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import './features/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('ru')],
        path: 'assets/translations',
        fallbackLocale: const Locale('ru'),
        useOnlyLangCode: true,
        child: const App(

        )
    ),
  );
}
