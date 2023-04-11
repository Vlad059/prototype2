import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main_bottom_navigation_bar.dart';
import 'station_bottom_sheet.dart';

import 'test_main_page.dart';

class PrototypeApp extends StatelessWidget {
  const PrototypeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScaffold(),
    );
  }
}

class MainScaffold extends StatefulWidget {
  const MainScaffold({Key? key}) : super(key: key);

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  final _mainPageController = PageController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _mainPageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableProvider(
        create: (context) => ValueNotifier(false),
        child: Stack(
          children: [
            Scaffold(
              body: const TestMainPage(

              ),
              bottomNavigationBar: MainBottomNavigationBar(
                onTap: (index){

                },
              ),
            ),
            Consumer<ValueNotifier<bool>>(
              builder: (context, value, child) {
                return AnimatedPositioned(
                  bottom: 0,
                  height: value.value ? MediaQuery.of(context).size.height * 0.7 : 0,
                  width: MediaQuery.of(context).size.width,
                  duration: const Duration(milliseconds: 500),
                  child: StationBottomSheet(
                      onClose: (){
                        value.value = false;
                      },
                  )
                );
              }
            )
          ],
        ),
    );
  }
}











