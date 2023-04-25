import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './di/app_scope.dart';

import '../common/service/style/style_service.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final IStyleService _appStyles;

  @override
  Widget build(BuildContext context) {
    return Provider<IAppScope>(
      create: (_){
        final appScope = AppScope();

        _appStyles = appScope.appStyles;

        return appScope;
      },
      child: ChangeNotifierProvider<IStyleService>(
        create: (_) => _appStyles,
        child: Consumer<IStyleService>(
          builder: (_,__,___) {
            return const MaterialApp(

            );
          },
        ),
      ),
    );
  }
}

