import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text('Second Page'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Go back to main page'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ));
  }
}
