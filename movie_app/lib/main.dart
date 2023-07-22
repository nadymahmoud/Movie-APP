import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/firebase_options.dart';
import 'package:movie_app/pages/login_page.dart';

import 'controller/auth_controller.dart';
void main() async{
      WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
options: DefaultFirebaseOptions.currentPlatform ,
  );

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
final authController = Get.put(AuthController(), permanent: true);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        
        
      ),
      home: const LoginPage(),
    );
  }
}

