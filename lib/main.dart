import 'package:flutter/material.dart';
import 'package:login_splash/login_page.dart';
import 'package:login_splash/profile_home.dart';
import 'package:login_splash/registration.dart';
import 'package:login_splash/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const SplashScreen(),
     //home: const LoginScreen(),
      routes: {
        'login': (ctx){
          return const LoginScreen();
        },
         'profilehome': (ctx){
          return const ProfileHome();
        },
        'registration': (ctx){
          return const UserRegistration();
        },
      },
    );
  }
}
