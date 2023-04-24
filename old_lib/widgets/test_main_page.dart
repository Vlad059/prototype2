import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'station_bottom_sheet.dart';

class TestMainPage extends StatelessWidget {
  const TestMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Consumer<ValueNotifier<bool>>(
          builder: (context, value, child){
            return TextButton(
              onPressed: (){
                value.value = true;
              },
              child: const Text('Show modal bottom sheet'),
            );
          },
        )
    );
  }
}
