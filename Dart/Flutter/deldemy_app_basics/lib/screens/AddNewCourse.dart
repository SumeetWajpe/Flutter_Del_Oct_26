import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddNewCourse extends StatefulWidget {
  @override
  State<AddNewCourse> createState() => _AddNewCourseState();
}

class _AddNewCourseState extends State<AddNewCourse> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _title;
  String? _subtitle;
  String? _imageUrl;
  String? _description;
  String? _language;
  DateTime? _lastUpdated;
  String? _subTitles;
  String? _trainer;

  int _id = 0;
  int? _likes;
  int? _rating;

  List<String> _subtitlesList = [];

  Widget _buildIdField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Course Id"),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter a value";
        }
        return null;
      },
      onSaved: (value) {
        _id = int.parse(value!);
      },
    );
  }

  void _saveCourse() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
    print(_id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add New Course",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _buildIdField(),
              ElevatedButton(
                onPressed: _saveCourse,
                child: const Text("Save Course"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
