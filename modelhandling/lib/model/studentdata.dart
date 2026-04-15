import 'package:modelhandling/model/studentmodel.dart';

class StudentService {
  Future<List<Student>> fetchStudents() async {
    await Future.delayed(const Duration(seconds: 2));

    final rawData = [
      {'id': '1', 'name': 'Juan Dela Cruz', 'age': 20, 'gpa': 1.5},
      {'id': '2', 'name': 'Juan Dela Juan', 'age': 25, 'gpa': 1.6},
      {'id': '6', 'name': 'Juan Dela Two', 'age': 24, 'gpa': 1.7},
    ];

    return rawData.map((data) => Student.fromMap(data)).toList();
  }
}