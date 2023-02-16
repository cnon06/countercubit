import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'countercubit.dart';
import 'home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
     
     home: BlocProvider(
        create: (_) => CounterCubit(),
        child: const Home(),
      ),
     
      
    );
  }
}