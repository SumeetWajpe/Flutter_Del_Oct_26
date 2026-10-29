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

  void _deleteTask(int id) async {
    await dbHelper.deleteTask(id);
    _refereshTaskList();
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

  void _toggelTaskStatus(Task task) async {
    Task updatedTask = Task(
      id: task.id,
      title: task.title,
      description: task.description,
      isCompleted: !task.isCompleted,
      createdAt: task.createdAt,
    );
    await dbHelper.updateTask(updatedTask);
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
                    title: Text(
                      task.title,
                      style: TextStyle(
                        decoration: task.isCompleted
                            ? TextDecoration.lineThrough
                            : null,
                      ),
                    ),
                    subtitle: Text(task.description!),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            _toggelTaskStatus(task);
                          },
                          icon: Icon(
                            task.isCompleted
                                ? Icons.check_box
                                : Icons.check_box_outline_blank,
                          ),
                        ),

                        IconButton(
                          onPressed: () {
                            _deleteTask(task.id!);
                          },
                          icon: Icon(
                            Icons.delete,
                            semanticLabel: "Delete task ${task.title}",
                          ),
                        ),
                      ],
                    ),
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
