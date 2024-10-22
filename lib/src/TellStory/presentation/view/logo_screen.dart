import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:will/src/TellStory/presentation/view/home.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), (){
      Get.offAll(()=> const HomeScreen());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:Colors.blueGrey.shade900,
      body: Center(
        child: Image(
            height: height*0.30,
            image: const AssetImage('assets/full_logo.png')),
      ),
    );
  }
}
