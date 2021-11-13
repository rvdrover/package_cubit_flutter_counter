import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    print("Widget Rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body:  Center(
          child: BlocBuilder<CounterCubit, int>(
            builder: (context, state) {
              return Text(
                      "$state",
                      style: const TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    );
            },
          ),
        ),
      
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().increment(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().decrement(),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
