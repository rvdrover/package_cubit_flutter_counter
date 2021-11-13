import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

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
      body: BlocBuilder<, int>(builder: (context, state) {
        return Center(
          child: Text(
            "$state",
            style: const TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      }),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () ,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            onPressed: () ,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
