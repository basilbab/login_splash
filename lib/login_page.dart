import 'package:flutter/material.dart';
import 'package:login_splash/profile_home.dart';
import 'package:login_splash/registration.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String username = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        body: Form(
          key: _formKey,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
              child: ListView(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.account_circle,
                    size: 200,
                    color: Colors.indigo,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 15, 25, 0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter User Name';
                        }
                        return null;
                      },
                      controller: userController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'User Name',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 15, 25, 0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Password';
                        }
                        return null;
                      },
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 15, 25, 0),
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            username = userController.text;
                            password = passwordController.text;
                            if (username == password) {
                              // Navigator.of(context).pushNamed('profilehome');
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileHome(),));
                            }
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 20),
                            textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  const Row(
                    children: [
                      //space for radio
                      //space for forgot password
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  const Center(
                      child: Text(
                    'Not a Member?',
                    style: TextStyle(
                        color: Colors.indigo, fontWeight: FontWeight.bold),
                  )),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(125, 1, 125, 0),
                    child: ElevatedButton(
                        onPressed: () {
                          // Navigator.of(context).pushNamed('registration');
                         //print(context);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const UserRegistration(),));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        child: const Text(
                          'Create Account',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
