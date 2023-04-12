import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../style/styles.dart';

class ChargeStationItem extends StatelessWidget {
  const ChargeStationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 350,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Пермь, Ленина, 90',
                style: AppTextStyles.chargeStationNameTextStyle,
              ),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide.none
                  ),
                  onPressed: (){

                  },
                  child: SvgPicture.asset('lib/assets/favorite-icon.svg')
              )
            ],
          ),
          Row(),
        ],
      )
    );
  }
}
