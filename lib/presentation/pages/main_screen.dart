import 'package:flutter/material.dart';
import 'package:spotify/presentation/pages/home_screen.dart';
import 'package:spotify/presentation/pages/search_screen.dart';
import 'package:spotify/presentation/pages/your_library.dart';
import 'package:spotify/presentation/widgets/bottom_navigationbar.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  final pages = const [
   HomeScreen(),
   SearchScreen(),
   YourLibrary()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(valueListenable: indexChangeNotifier,builder: (context,index,_){
        return pages[index];
      },),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
