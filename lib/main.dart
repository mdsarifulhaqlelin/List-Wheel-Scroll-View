import 'package:flutter/material.dart';

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
  var arrIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange, title: Text('3D List')),
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 200,
          children: arrIndex
              .map((value) { return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(21)
                  ),
                      width: double.infinity,
                  child: Center(child: Text('$value', style: TextStyle(fontSize: 21, color: Colors.white),)),),
              );
              }
          )
          .toList(),
        ),
      ),
    );
  }
}
