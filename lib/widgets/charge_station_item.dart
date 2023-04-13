import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../style/styles.dart';

class ChargeStationItem extends StatelessWidget {
  const ChargeStationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 308,
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
                    side: BorderSide.none,
                    alignment: const Alignment(5,0)
                  ),
                  onPressed: (){

                  },
                  child: SvgPicture.asset(
                      'lib/assets/favorite-icon.svg',
                      width: 24,
                      height: 24
                  )
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset('lib/assets/route-icon.svg',
                    width: 20,
                    height: 20,
                  ),
                  const Text('0.5км',
                    style: AppTextStyles.chargeStationSubTextStyle,
                  ),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide.none,
                      ),
                      onPressed: (){

                      },
                      child: Row(
                        children: [
                          SvgPicture.asset(
                              'lib/assets/navigation-icon.svg',
                              width: 18,
                              height: 18
                          ),
                          const Text('маршрут',
                            style: AppTextStyles.chargeStationSubTextStyle,
                          ),
                        ],
                      )
                  ),
                  SvgPicture.asset('lib/assets/type1-icon.svg',
                    width: 20,
                    height: 20,
                  ),
                  const VerticalDivider(
                    width: 4,
                  ),
                  SvgPicture.asset('lib/assets/type2-icon.svg',
                    width: 20,
                    height: 20,
                  ),
                ],
              ),
              const Text('#6935',
                style: AppTextStyles.chargeStationSubGrayTextStyle ,
              ),
            ],
          ),
        ],
      )
    );
  }
}
