import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
        backgroundColor: Color.fromARGB(255, 133, 3, 73),
      ),
      body: Padding(padding: const EdgeInsets.all(8.0),
      child: SafeArea(child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(hintText: 'Title'),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(hintText: 'Description'),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(onPressed: () {
            
          },style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 133, 3, 73)
          ), child: Text('ADD',style: TextStyle(color: Color.fromARGB(255, 243, 241, 243)),))

        ],
      )),),
    );
  }
}