import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.memory,
                    size: 60,
                    color: Colors.red,
                  ),
                  SizedBox(width: 20), // Spacer between icon and text
                  Text(
                    "Flutter ROW",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40), // Space between row and rating
              RatingWidget(),  // Rating stars widget
            ],
          ),
        ),
      ),
    );
  }
}

class RatingWidget extends StatefulWidget {
  @override
  _RatingWidgetState createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  int _rating = 0; // Default rating is 0

  void _setRating(int rating) {
    setState(() {
      _rating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(5, (index) {
            return IconButton(
              icon: Icon(
                index < _rating ? Icons.star : Icons.star_border,
                color: Colors.yellow,
                size: 40,
              ),
              onPressed: () {
                _setRating(index + 1);  // Rating starts from 1
              },
            );
          }),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}



