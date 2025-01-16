import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/simple_input_field_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            width: width,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => SimpleInputFieldScreen(),
                ),
              );
            },
            child: const Text('Simple Input Field'),
          ),
        ],
      ),
    );
  }
}
