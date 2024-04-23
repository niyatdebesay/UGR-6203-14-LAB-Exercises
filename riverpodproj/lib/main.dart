import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: CounterApp()));
}

class CounterState extends ChangeNotifier {
  int count;

  CounterState(this.count);

  void increment() {
    count++;
    notifyListeners();
  }

  void decrement() {
    count--;
    notifyListeners();
  }
}

final counterProvider = ChangeNotifierProvider<CounterState>((ref) {
  return CounterState(0);
});

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter App'),
        ),
        body: Center(
          child: Consumer(
            builder: (context, watch, _) {
              final counterState = watch(counterProvider);
              return Text(
                'Count: ${counterState.count}',
                style: TextStyle(fontSize: 24),
              );
            },
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () =>
                  context.read(counterProvider).decrement(),
              tooltip: 'Decrement',
              child: Icon(Icons.remove),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () =>
                  context.read(counterProvider).increment(),
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}