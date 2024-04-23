import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child: MyApp(),
    ),
  );
}

class Todo {
  final int id;
  final int userId;
  final String title;
  final bool completed;

  Todo({
    required this.id,
    required this.userId,
    required this.title,
    required this.completed,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      completed: json['completed'],
    );
  }
}

class TodoProvider with ChangeNotifier {
  List<Todo> _todos = [];
  List<Todo> get todos => _todos;

  Future<void> fetchTodos() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      _todos = data.map((json) => Todo.fromJson(json)).toList();
      notifyListeners();
    } else {
      throw Exception('Failed to fetch todos');
    }
  }
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todoProvider = Provider.of<TodoProvider>(context, listen: false);

    return MaterialApp(
      title: 'Todos App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Todos'),
          backgroundColor: Colors.purple[50],
        ),
        body: FutureBuilder<void>(
          future: todoProvider.fetchTodos(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else {
              return ListView.builder(
                itemCount: todoProvider.todos.length,
                itemBuilder: (context, index) {
                  final todo = todoProvider.todos[index];
                  return Container(
                    margin: EdgeInsets.only(bottom: 5.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                        color: Colors.grey[400]!,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: ListTile(
                      title: Column( children:[
                       ListTile(
                      title: Text('id:${todo.id.toString()}'),
                      
                            ),    
                        Text('userId: ${todo.userId.toString()}'),
                       Text('title:${todo.title}'),

                       Text('Completed: ${todo.completed}'),
                    ]),
                  ));
                },
              );
            }
          },
        ),
      ),
    );
  }
}