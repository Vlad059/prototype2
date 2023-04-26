import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/main_navigation_bar.dart';

import '../../bottom_sheet/widgets/bottom_sheet_stack.dart';


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
        children: [
          Container(
            child: Center(
              child: TextButton(
                onPressed: (){
                  Provider.of<BottomSheetVisibility>(context, listen: false).value = true;
                },
                child: const Text('ShowSheet')
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const MainNavigationBar()
    );
  }
}
