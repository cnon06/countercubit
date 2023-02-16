import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'countercubit.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('build is triggered.');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, int>(
              builder: (context, count) => Center(child: Text('$count',style: const TextStyle(fontSize: 50,fontWeight: FontWeight.bold),)),
            ),
            const SizedBox(height: 25,),
            ElevatedButton(
                onPressed: () {
                  context.read<CounterCubit>().increment();
                },
                child: const Text('Increase')),

                ElevatedButton(
                onPressed: () {
                  context.read<CounterCubit>().decrement();
                },
                child: const Text('Decrease')),
          ],
        ),
      ),
    );
  }
}
