import 'package:flutter/material.dart';

import 'charge_data.dart';
import 'charge_progress.dart';
import 'charge_station_item.dart';

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
          physics: const NeverScrollableScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: Column(
              children: [
                const Divider(
                  thickness: 3,
                  color: AppColors.dividerColor,
                  indent: 160,
                  endIndent: 160,
                ),
                const ChargeProgress(),
                const ChargeStationItem(),
                const ChargeData(),
                Expanded(
                    child: Center(
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: AppColors.commonButtonColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                            ),
                            minimumSize: const Size(350, 60),
                          ),
                          onPressed: (){

                          },
                          child: const Text('Остановить зарядку',
                            style: AppTextStyles.chargeCaptureTextStyle
                          )
                      ),
                    )
                )
              ],
            ),
          )
        )
      )
    );
  }
}
