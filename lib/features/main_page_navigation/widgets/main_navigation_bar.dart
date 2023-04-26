import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

class MainNavigationBar extends StatefulWidget {
  final void Function(int)? onTap;

  const MainNavigationBar({Key? key, this.onTap}) : super(key: key);

  @override
  State<MainNavigationBar> createState() => _MainNavigationBarState();
}

class _MainNavigationBarState extends State<MainNavigationBar> {
  final iconAssetPath = 'assets/icons/';

  final pageNameAndIconAsset = <String, String>{
    'Карта': 'map-page-icon.svg',
    'Список': 'list-page-icon.svg',
    'Сканер': 'qr-page-icon.svg',
    'Профиль': 'profile-page-icon.svg'
  };
  
  final double iconWidth = 24;
  
  final double iconHeight = 24;
  
  int _currentIndex = 0;
  
  String fullIconAssetPath(String iconAsset) {
    return iconAssetPath + iconAsset;
  }
  
  void onTap(index) {
    _currentIndex = index;

    setState(() {

    });

    if (widget.onTap != null) {
      widget.onTap!(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          for(var entry in pageNameAndIconAsset.entries)
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(fullIconAssetPath(entry.value),
                      width: iconWidth,
                      height: iconHeight
                  )
                ),
                label: entry.key.tr(),
            )
        ],
        onTap: onTap
    );
  }
}