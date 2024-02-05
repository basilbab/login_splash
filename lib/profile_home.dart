import 'package:flutter/material.dart';

class ProfileHome extends StatefulWidget {
  const ProfileHome({super.key});

  @override
  State<ProfileHome> createState() => _ProfileHomeState();
}

class _ProfileHomeState extends State<ProfileHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.amber),
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Welcome',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.indigo,
          ),
          body: ListView(
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    height: 200,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.yellow,
                        Colors.greenAccent,
                        Colors.indigo,
                        Colors.teal,
                      ],
                    )),
                  ),
                  const Positioned(
                    left: 100,
                    top: 50,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 100,
                    ),
                  ),
                  const Positioned(
                    left: 110,
                    top: 60,
                    child: CircleAvatar(
                      radius: 90,
                      backgroundImage: AssetImage('assets/profile.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(Icons.logout)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Text(
                      'Catherine Johns',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          backgroundColor: Color.fromARGB(255, 3, 3, 0)),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_back_ios_sharp),
                    title: Text('Skill Set',
                    style: TextStyle(color: Color.fromARGB(255, 6, 23, 180),
                    fontWeight: FontWeight.bold),),
                    
                    subtitle: Text('Resposive programming, GUI designing'),
                  ),
                   ListTile(
                    leading: Icon(Icons.arrow_back_ios_sharp),
                    title: Text('On going Projects',
                    style: TextStyle(color: Color.fromARGB(255, 6, 23, 180),
                    fontWeight: FontWeight.bold),),
                    
                    subtitle: Text('Port Blair Scheduling'),
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_back_ios_sharp),
                    title: Text('Compitency Level',
                    style: TextStyle(color: Color.fromARGB(255, 6, 23, 180),
                    fontWeight: FontWeight.bold),),
                    
                    subtitle: LinearProgressIndicator(
              value: 8,
              semanticsLabel: 'Linear progress indicator',
            ),
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_back_ios_sharp),
                    title: Text('Assesment Data',
                    style: TextStyle(color: Color.fromARGB(255, 6, 23, 180),
                    fontWeight: FontWeight.bold),),
                    
                    subtitle: Text('In progress'),
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_back_ios_sharp),
                    title: Text('GIT',
                    style: TextStyle(color: Color.fromARGB(255, 6, 23, 180),
                    fontWeight: FontWeight.bold),),
                    
                    subtitle: Text('In progress'),
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_back_ios_sharp),
                    title: Text('Dev Options',
                    style: TextStyle(color: Color.fromARGB(255, 6, 23, 180),
                    fontWeight: FontWeight.bold),),
                    
                    subtitle: Text('Submitted'),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
