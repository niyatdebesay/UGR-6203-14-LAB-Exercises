class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
}

class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  int getTotalMarks() {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    return total;
  }

  double getAverageMarks() {
    if (marks.isEmpty) {
      return 0;
    }
    int total = getTotalMarks();
    return total / marks.length;
  }
}

void main() {
  Student student1 = Student("John", 18, "New York", 1, [85, 90, 92, 88]);
  Student student2 = Student("Emma", 19, "London", 2, [95, 88, 90, 91]);

  print("Student 1 total marks: ${student1.getTotalMarks()}");
  print("Student 1 average marks: ${student1.getAverageMarks()}");

  print("Student 2 total marks: ${student2.getTotalMarks()}");
  print("Student 2 average marks: ${student2.getAverageMarks()}");
}