import 'package:flutter/material.dart';
import 'package:modelhandling/model/studentdata.dart';
import 'package:modelhandling/model/studentmodel.dart';

class StudentList extends StatefulWidget {
  const StudentList({super.key});

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
final StudentService studentService = StudentService();
List<Student> students = [];

//errorhandling
bool isloading = true;
String? errormessage;

Future<void> loadStudent() async{
  // capture data
  try{
    final loadstudent = await studentService.fetchStudents();
    setState(() {
      students = loadstudent;
      isloading = false;
    });
  }
  catch(e){
    setState(() {
      isloading = false;
      errormessage = "Failed to load student data";
    });
  }
}

@override
  void initState() {
    loadStudent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index){
          final student = students[index];
          return ListTile(
            title: Text("${student.name}"),
            subtitle: Text("${student.age} | ${student.gpa}"),
          );
        }
      ),
    );
  }
}