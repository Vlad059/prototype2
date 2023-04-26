import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../main_page_navigation/screens/main_scaffold.dart';

typedef BottomSheetVisibility = ValueNotifier<bool>;

class BottomSheetStack extends StatelessWidget {
  const BottomSheetStack({Key? key}) : super(key: key);

  BottomSheetVisibility createVisibilityNotifier() {
    BottomSheetVisibility isVisible = ValueNotifier(false);

    return isVisible;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomSheetVisibility>(
        create: (_) => createVisibilityNotifier(),
        child: Stack(
          children: const [
            MainScaffold(),
            BottomSheet()
          ],
        )
    );
  }
}

class BottomSheet extends StatefulWidget {
  const BottomSheet({Key? key}) : super(key: key);

  @override
  State<BottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheet> {
  final sheetWidth = double.infinity;

  final heightScreenFactor = 0.7;

  final animationMilliseconds = 380;

  double _currentSheetHeight = 0;

  void changeCurrentHeight(isVisible, context) {
    if (isVisible) {
      _currentSheetHeight = MediaQuery.of(context).size.height * heightScreenFactor;
    } else {
      _currentSheetHeight = 0;
    }
  }

  void onPanUpdate(DragUpdateDetails details) {
    if (details.delta.dy > 0) {
      _currentSheetHeight = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomSheetVisibility>(
      builder: (context, visibilityNotifier, _) {
        changeCurrentHeight(visibilityNotifier.value, context);

        return GestureDetector(
           onPanUpdate: onPanUpdate,
           child: AnimatedContainer(
                width: sheetWidth,
                height: _currentSheetHeight,
                duration: Duration(milliseconds: animationMilliseconds),
                color: Colors.lightGreenAccent
            )
        );
      },
    );
  }
}

