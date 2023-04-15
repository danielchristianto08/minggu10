import 'package:flutter/material.dart';
import 'package:minggu10/widget/flagcomwidget.dart';
import 'package:minggu10/widget/todotilewidget.dart';

class ToDoListPage extends StatefulWidget {
  static const routeName = '/todolist';
  const ToDoListPage({super.key});

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  @override
  Widget build(BuildContext context) {
    final List<String> _todoList = const [
      "Selesaikan Flutter Pemula",
      "Join ISTTS"
    ];
    final List<String> _doneTodoList = const [];
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do App"),
        actions: [
          const FlagComWidget(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      body: ListView.builder(
          itemCount: _todoList.length,
          itemBuilder: (context, index) {
            return ToDoTile(
                task: _todoList[index],
                isDone: _doneTodoList.contains(_todoList[index]),
                onClick: () {
                  setState(() {
                    _doneTodoList.add(_todoList[index]);
                  });
                }
                //doneTask: _doneTodoList[index],
                );
          }),
    );
  }
}
