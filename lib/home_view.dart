import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Weather App"),centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: () {},icon: const Icon(Icons.search),)

        ],

      ),
    );
  }
}
