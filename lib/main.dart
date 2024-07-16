import 'package:figma_design2/pages/register/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCCRTHJour2Ow4oYBadxLs0h8uGQ-uHmGw",
            appId: "1:747098834948:android:574ed2052c88cbf6714d51",
            messagingSenderId: "747098834948",
            projectId: "tradewatch-7206a"
        )
    );

  } catch (e) {
    print("Error initializing Firebase: $e");
  }
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return  GetMaterialApp(
      title: 'Trade Watch',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0EA102),
          ),
        useMaterial3: true,
      ),

      home:const SplashScreen(),
    );
  }
}

