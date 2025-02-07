import 'package:flutter/material.dart';

class CardsExamplesScreen extends StatelessWidget {
  const CardsExamplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards Examples"),
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: ListTile(
              title: Text('Simple card'),
              subtitle: Text('with subtitle'),
            ),
          ),
        ],
      ),
    );
  }
}
