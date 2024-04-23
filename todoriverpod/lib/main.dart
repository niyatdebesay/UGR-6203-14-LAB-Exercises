import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart' show WidgetRef;

void main() {
  runApp(MyApp());
}

class Todo {
  final int id;
  final String title;
  final bool completed;

  Todo({
    required this.id,
    required this.title,
    required this.completed,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }
}

final todoProvider = StateNotifierProvider<TodoProvider, List<Todo>>((ref) {
  return TodoProvider();
});

class TodoProvider extends StateNotifier<List<Todo>> {
  TodoProvider() : super([]);

  Future<void> fetchTodos() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      state = data.map((json) => Todo.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch todos');
    }
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Todos App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Todos'),
            backgroundColor: Colors.purple[50],
          ),
          body: Consumer(
            builder: (context, watch, _) {
              final List<Todo> todoProviderState = watch(todoProvider);
                    return ListView.builder(
                      itemCount: todoProviderState.length,
                      itemBuilder: (context, index) {
                        final Todo todo = todoProviderState[index];
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
                            title: Text(todo.title),
                            subtitle: Text('Completed: ${todo.completed}'),
                          ),
                        );
                      },
                    );
                  
            },
          ),
        ),
      ),
    );
  }
}