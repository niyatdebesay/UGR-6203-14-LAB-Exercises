import 'dart:math';

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  Circle circle = Circle(5.0);
  double circleArea = circle.calculateArea();
  print("Circle Area: $circleArea"); // Output: Circle Area: 78.53981633974483

  Square square = Square(4.0);
  double squareArea = square.calculateArea();
  print("Square Area: $squareArea"); // Output: Square Area: 16.0
}