class Student {
  final String name;
  final List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0;
    }

    int sum = marks.reduce((value, element) => value + element);
    return sum / marks.length;
  }
}

void main() {
  Student student = Student('Alice', [85, 90, 92, 88, 95]);
  double averageMark = student.calculateAverageMark();
  print('Average Mark for ${student.name}: ${averageMark.toStringAsFixed(2)}');
}