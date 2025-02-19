import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter UI",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter UI"),
        ),
        body: Container(
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.memory,
                size: 60,
                color: Colors.red,
              ),
              Text(
                "Flutter ROW",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

