import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: indexChangeNotifier, builder: (context,newIndex,_){
      return  BottomNavigationBar(
          onTap: (index){
            indexChangeNotifier.value = index;
          },
          backgroundColor: Colors.black,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          selectedLabelStyle: const TextStyle(fontSize: 12),
          unselectedLabelStyle: const TextStyle(fontSize: 12),
          currentIndex: newIndex,items:   [
          _bottomNavigationBarItem("icons/home.svg", "Home",indexChangeNotifier,0 ),
         _bottomNavigationBarItem("icons/search.svg", "Search",indexChangeNotifier,1 ),
         _bottomNavigationBarItem("icons/library.svg", "My Library",indexChangeNotifier,2 )

      ]);
    });
  }
}

BottomNavigationBarItem _bottomNavigationBarItem(
    String iconpath,
    String label,
    ValueNotifier<int> currentIndex,
    int itemIndex
    ){
  return BottomNavigationBarItem(
    icon: ValueListenableBuilder(
      valueListenable: currentIndex,
      builder: (context, index, _) {
        return SvgPicture.asset(
          iconpath,
          color: index == itemIndex ? Colors.white : Colors.grey, // Compare with index
        );
      },
    ),
    label: label,
  );
}

