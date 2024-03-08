void main() {
  Map<String, int> studentMarks = {};

  // Add entries using putIfAbsent
  studentMarks.putIfAbsent('Alice', () => 85);
  studentMarks.putIfAbsent('Bob', () => 92);
  studentMarks.putIfAbsent('Charlie', () => 78);
  studentMarks.putIfAbsent('David', () => 90);

  // Iterate over the entries using forEach
  print('Student Marks:');
  studentMarks.forEach((student, marks) {
    print('$student: $marks');
  });

  // Check for specific keys using containsKey
  String searchName = 'Charlie';
  if (studentMarks.containsKey(searchName)) {
    var marks = studentMarks[searchName];
    print('$searchName\'s marks: $marks');
  } else {
    print('$searchName is not found in the map.');
  }
}