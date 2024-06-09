import 'package:flutter/material.dart';
import 'package:spotify/domain/core/constant_values.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushReplacementNamed(context, '/main');
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Center(
        child: Image.asset('images/Logo.png'),
      ),
    );
  }
}
