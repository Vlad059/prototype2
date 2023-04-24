import 'package:flutter/material.dart';

import '../style/styles.dart';

class ChargeData extends StatelessWidget {
  const ChargeData({Key? key}) : super(key: key);

  final paramNames = const <String>['Статус', 'Мощность', 'Общее потребление', 'Начало зарядки'];

  final paramValue = const <String>['20%', '22 кВт', '4,56 кВт ч', '28.02.23 11:35'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 308,
      child: Column(
        children: [
            for (int i=0; i<paramNames.length; i++)
              ...[
                const Divider(
                  thickness: 2,
                  color: AppColors.dividerColor,
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(paramNames[i],
                      style: AppTextStyles.chargeParametersTextStyle,
                    ),
                    Text(paramValue[i],
                      style: AppTextStyles.chargeStationSubTextStyle,
                    ),
                  ],
                )
              ]
        ],
      ),
    );
  }
}
