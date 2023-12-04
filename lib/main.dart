import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Clickss';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF2596be),
          title: const Text('App Title'),
        ),
        body: Center(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OutlinedButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      disabledForegroundColor: Colors.blue,
                      backgroundColor: Colors.lightBlueAccent,
                    ),
                    onPressed: () {
                      setState(() {
                        buttonName = 'clicked';
                      });
                    },
                    child: Text(buttonName)),
                ElevatedButton(
                    style: TextButton.styleFrom(
                      primary: Colors.blue,
                      onSurface: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        buttonName = 'clicked';
                      });
                    },
                    child: Text(buttonName)),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
