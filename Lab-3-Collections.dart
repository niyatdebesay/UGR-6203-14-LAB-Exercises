void main() {
  Map<String, int> studentMarks = {};

  studentMarks.putIfAbsent('Alice', () => 85);
  studentMarks.putIfAbsent('Bob', () => 92);
  studentMarks.putIfAbsent('Charlie', () => 78);
  studentMarks.putIfAbsent('David', () => 90);

  print('Student Marks: $studentMarks');

  studentMarks.forEach((name, marks) {
    print('$name scored $marks marks');
  });

  String studentName = 'Charlie';
  if (studentMarks.containsKey(studentName)) {
    int marks = studentMarks[studentName]!;
    print('$studentName scored $marks marks');
  } else {
    print('$studentName is not found in the map');
  }
}