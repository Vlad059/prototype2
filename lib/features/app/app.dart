import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';

import './di/app_scope.dart';

import '../common/service/style/style_service.dart';
import '../bottom_sheet/widgets/bottom_sheet_stack.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _appScope = AppScope();

  @override
  Widget build(BuildContext context) {
    return Provider<IAppScope>(
      create: (_) => _appScope,
      child: ChangeNotifierProvider<IStyleService>(
        create: (_) => _appScope.appStyles,
        child: Consumer<IStyleService>(
          builder: (context,_,__) {
            return MaterialApp(
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                home: const BottomSheetStack(),
            );
          },
        ),
      ),
    );
  }
}

