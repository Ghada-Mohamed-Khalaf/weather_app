import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search City"),

      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: TextField(decoration: InputDecoration(
            hintText:"enter city name" ,hintStyle:const TextStyle(color: Colors.red) ,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: Colors.orange,
              ),


            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),

            ),
            focusedBorder: const OutlineInputBorder()

          ),),

        ),
      ),
    );
  }
}
