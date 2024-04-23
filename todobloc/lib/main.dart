import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class TodosState {
  final bool isLoading;
  final List<Todo> todos;
  final String error;

  TodosState({
    required this.isLoading,
    required this.todos,
    required this.error,
  });

  TodosState copyWith({
    bool? isLoading,
    List<Todo>? todos,
    String? error,
  }) {
    return TodosState(
      isLoading: isLoading ?? this.isLoading,
      todos: todos ?? this.todos,
      error: error ?? this.error,
    );
  }
}

abstract class TodosEvent {}

class FetchTodosEvent extends TodosEvent {}

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  final _apiProvider = ApiProvider();

  TodosBloc() : super(TodosState(isLoading: false, todos: [], error: '')) {
    on<FetchTodosEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true, error: ''));

      try {
        final todos = await _apiProvider.fetchTodos();
        emit(state.copyWith(isLoading: false, todos: todos));
      } catch (error) {
        emit(state.copyWith(isLoading: false, error: 'Failed to fetch todos'));
      }
    });
  }
}

class ApiProvider {
  Future<List<Todo>> fetchTodos() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return List<Todo>.from(jsonData.map((x) => Todo.fromJson(x)));
    } else {
      throw Exception('Failed to fetch todos');
    }
  }
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

class TodosPage extends StatefulWidget {
  @override
  _TodosPageState createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      BlocProvider.of<TodosBloc>(context).add(FetchTodosEvent());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      body: BlocBuilder<TodosBloc, TodosState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.error.isNotEmpty) {
            return Center(
              child: Text(state.error),
            );
          } else {
            return ListView.builder(
              itemCount: state.todos.length,
              itemBuilder: (context, index) {
                final todo = state.todos[index];
                return Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: ListTile(
                    title: Text('ID: ${todo.id}'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('User ID: ${todo.userId}'),
                        Text('Title: ${todo.title}'),
                        Text('Completed: ${todo.completed}'),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  final todosBloc = TodosBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TodosBloc>(
      create: (context) => todosBloc,
      child: MaterialApp(
        title: 'Todos App',
        home: TodosPage(),
      ),
    );
  }
}