import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minggu10/widget/todotilewidget.dart';

class DoneToDoPage extends StatefulWidget {
  static const routeName = "/donetodo";
  const DoneToDoPage({Key? key}) : super(key: key);

  @override
  State<DoneToDoPage> createState() => _DoneToDoPageState();
}

class _DoneToDoPageState extends State<DoneToDoPage> {
  @override
  Widget build(BuildContext context) {
    final List<String> _todoList = const [
      "Selesaikan Flutter Pemula",
      "Join ISTTS"
    ];
    //final List<String> _doneTodoList = const [];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Done To Do App"),
      ),
      body: ListView.builder(
          itemCount: _todoList.length,
          itemBuilder: (context, index) {
            return ToDoTile(
              task: _todoList[index],
            );
          }),
    );
  }
}
