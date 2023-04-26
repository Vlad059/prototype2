import 'package:flutter/material.dart';

import '../widgets/main_navigation_bar.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({Key? key}) : super(key: key);

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(

      ),
      bottomNavigationBar: const MainNavigationBar()
    );
  }
}
