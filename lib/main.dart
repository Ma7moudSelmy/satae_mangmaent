import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:satae_mangmaent/controllers/Cubit/counter%20cubit.dart'
    show CounterCubit;

void main() {
  runApp(BlocProvider(create: (_) => CounterCubit(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, String>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(widget.title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                BlocBuilder<CounterCubit, String>(
                  builder: (context, state) {
                    return BlocProvider(
                      create: (context) => CounterCubit(),
                      child: Text(
                        context.watch<CounterCubit>().state,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),

          floatingActionButton: BlocProvider(
            create: (context) => CounterCubit(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    context.read<CounterCubit>().increment();
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                const SizedBox(height: 16),
                FloatingActionButton(
                  onPressed: () {
                    context.read<CounterCubit>().decrement();
                  },
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
