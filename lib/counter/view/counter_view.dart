import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter_app/counter/cubit/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text('Counter',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
        ),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text(
              '$state',
              style: textTheme.displayMedium,
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'increment',
            child: const Icon(Icons.add, color: Colors.white,),
            onPressed: () => context.read<CounterCubit>().increment(),
            backgroundColor: Colors.teal,
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            heroTag: 'decrement',
            child: const Icon(Icons.remove, color: Colors.white,),
            onPressed: () => context.read<CounterCubit>().decrement(),
            backgroundColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
