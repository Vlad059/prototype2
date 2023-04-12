import 'package:flutter/material.dart';

import '../style/styles.dart';

class ChargeProgress extends StatelessWidget {
  const ChargeProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
      decoration: BoxDecoration(
          color: AppColors.commonColor,
          borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text('15:20',
            style: AppTextStyles.chargeTimeTextStyle,
          ),
          Text('зарядка',
            style: AppTextStyles.chargeCaptureTextStyle,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 20
            ),
            child: LinearProgressIndicator(
              value: 0.2,
              backgroundColor: AppColors.linearProgressBgColor,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
