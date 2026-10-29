import 'package:flutter/material.dart';
import 'package:flutter_app_sqlite/db/dbhelper.dart';
import 'package:flutter_app_sqlite/models/task.model.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  final dbHelper = DatabaseHelper.instance;
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  List<Task> tasks = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _refereshTaskList();
  }

  void _refereshTaskList() async {
    List<Task> tasklist = await dbHelper.getAllTasks();
    setState(() {
      tasks = tasklist;
    });
  }

  void _addtask() async {
    if (titleController.text.isEmpty) return;
    await dbHelper.insertTask(
      Task(
        title: titleController.text,
        description: descriptionController.text,
        createdAt: DateTime.now(),
      ),
    );
    titleController.clear();
    descriptionController.clear();
    _refereshTaskList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SQLite Task Manager")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Column(
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    labelText: "Task Title",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                    labelText: "Task Description",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(onPressed: _addtask, child: Text("Add Task")),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  Task task = tasks[index];
                  return ListTile(
                    title: Text(task.title),
                    subtitle: Text(task.description!),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
