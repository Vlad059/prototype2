import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

class MainBottomNavigationBar extends StatefulWidget {
  final void Function(int)? onTap;

  const MainBottomNavigationBar({Key? key, this.onTap}) : super(key: key);

  @override
  State<MainBottomNavigationBar> createState() => _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  int _currentIndex = 0;

  final _pageNames = <String> ['Карта', 'Список', 'Сканер', 'Профиль'];

  final _iconAssetPath = 'lib/assets/';

  final _pageIconAssetName= ['map-page-icon.svg',
    'list-page-icon.svg',
    'qr-page-icon.svg',
    'profile-page-icon.svg'
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          for(int i=0; i<_pageNames.length; i++)
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(_iconAssetPath + _pageIconAssetName[i],
                      width: 24,
                      height: 24
                  )
                ),
                label: _pageNames[i],
            )
        ],
        onTap: (index){
          _currentIndex = index;

          setState(() {

          });

          if (widget.onTap != null) {
            widget.onTap!(index);
          }
        },
    );
  }
}