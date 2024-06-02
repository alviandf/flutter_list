import 'package:flutter/material.dart';
import 'package:flutter_list/ui/first_subtask_screen.dart';
import 'package:flutter_list/ui/second_subtask_screen.dart';
import 'package:flutter_list/ui/third_subtask_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter List'),
      routes: {
        '/first-subtask': (context) => const FirstSubtaskScreen(),
        '/second-subtask': (context) => const SecondSubtaskScreen(),
        '/third-subtask': (context) => const ThirdSubtaskScreen(),
      },
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            button(
                text: 'First Subtask',
                onPressed: () =>
                    Navigator.pushNamed(context, '/first-subtask')),
            button(
                text: 'Second Subtask',
                onPressed: () =>
                    Navigator.pushNamed(context, '/second-subtask')),
            button(
                text: 'Third Subtask',
                onPressed: () =>
                    Navigator.pushNamed(context, '/third-subtask')),
          ],
        ),
      ),
    );
  }

  Widget button({required String text, required VoidCallback onPressed}) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
