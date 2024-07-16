import 'package:figma_design2/pages/register/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../firebase/wrapper.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    _gohome();
    super.initState();
  }

  void _gohome() async{
     await Future.delayed(const Duration(milliseconds: 2000),(){});
      Get.off(const Wrapper());
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginPagState()));
  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: Center(
        child: Image(
          image: const AssetImage("assets/Logo.png"),
         
          width: MediaQuery.of(context).size.width/1.2,
          ),
      ),
    );
  }
}