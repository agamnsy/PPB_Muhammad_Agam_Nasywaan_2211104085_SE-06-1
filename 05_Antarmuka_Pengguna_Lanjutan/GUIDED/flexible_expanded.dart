import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible & Expanded'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          const Text('Flexible'),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 100,
                color: Colors.purple,
              ),
              Flexible(
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: const Text(
                      "This is Flexible Widget, it will take the remaining space "),
                ),
              ),
              const Icon(Icons.sentiment_very_satisfied),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Expanded'),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 100,
                color: Colors.blueAccent,
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.redAccent,
                  child: const Text(
                      'This is Expanded Widget it force the widget to take up all remaining space'),
                ),
              ),
              const Icon(Icons.sentiment_very_satisfied),
            ],
          )
        ],
      ),
    );
  }
}
