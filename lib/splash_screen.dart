import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   
    super.initState();
     gotoLogin();
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home:  Scaffold(
       body: Center(
         child: ListView(
            children:<Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 340, 0, 0),
                    child: Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 17.0,
                          )
                        ]
                      ),
                      child: const Image(
                        image: AssetImage('assets/logo.webp'),
                        height: 100,
                         )
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Image(
                        image: AssetImage('assets/splash.gif'),
                        height: 100,
                         )
                  ),

                ],
              ),
             
            ]
          ),
       ),
     
    ));
    
   
  }
   void gotoLogin() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushNamed('login');
      
    });
  }
}