import 'package:flutter/material.dart';
import 'package:minggu10/ui/donetodopage.dart';
import 'package:minggu10/ui/loginpage.dart';
import 'package:minggu10/ui/settingpage.dart';
import 'package:minggu10/ui/todolistpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Minggu10",
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: Scaffold(
          body: Center(
            child: const LoginPage(),
          ),
          bottomNavigationBar: Builder(builder: (context) {
            return BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.done), label: 'Done'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: 'Setting'),
                ],
                currentIndex: 0,
                onTap: (index) async {
                  switch (index) {
                    case 0:
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: ((context) {
                        return ToDoListPage();
                      })));
                      break;
                    case 1:
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: ((context) {
                        return DoneToDoPage();
                      })));
                      break;
                    case 2:
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: ((context) {
                        return settingPage();
                      })));
                      break;
                  }
                });
          }),
        ));
  }
}
