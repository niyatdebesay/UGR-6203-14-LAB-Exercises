import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(CounterApp());
}

// Counter Event
abstract class CounterEvent {}

class DecrementEvent extends CounterEvent {}

class IncrementEvent extends CounterEvent {}

// Counter State
class CounterState {
  final int count;

  CounterState(this.count);
}

class Countert extends Bloc<CounterEvent, CounterState> {
  Countert() : super(CounterState(0)) {
    on<DecrementEvent>((event, emit) {
      emit(CounterState(state.count - 1));
    });

    on<IncrementEvent>((event, emit) {
      emit(CounterState(state.count + 1));
    });
  }

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is DecrementEvent) {
      yield CounterState(state.count - 1);
    } else if (event is IncrementEvent) {
      yield CounterState(state.count + 1);
    }
  }
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: BlocProvider(
        create: (context) => Countert(),
        child: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<Countert, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.count}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<Countert>(context).add(DecrementEvent());
            },
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
          SizedBox(width: 10.0),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<Countert>(context).add(IncrementEvent());
            },
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}