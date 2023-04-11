import 'package:flutter/material.dart';

import '../style/styles.dart';

class StationBottomSheet extends StatefulWidget {
  final void Function() onClose;

  const StationBottomSheet({Key? key, required this.onClose}) : super(key: key);

  @override
  State<StationBottomSheet> createState() => _StationBottomSheetState();
}

class _StationBottomSheetState extends State<StationBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details){
          if (details.delta.dy > 0) {
            widget.onClose();
          }
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: AppColors.commonBorderColor,
              width: 2
            )
          )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 200,
                color: Colors.blue,
                child: Column(
                  children: const [
                    Text('15:20',
                      style: TextStyles.chargeTimeTextStyle,
                    ),
                    Text('зарядка',
                      style: TextStyles.chargeCaptureTextStyle,
                    ),
                    LinearProgressIndicator(
                      value: 0.2,
                    )
                  ],
                ),
              )
            ],
          )
        )
      )
    );
  }
}
