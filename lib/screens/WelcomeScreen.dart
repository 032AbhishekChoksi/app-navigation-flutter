import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  String name;

  WelcomeScreen(this.name);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome Screen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text('Welcome ${widget.name}'),
              ElevatedButton(
                  onPressed: () => Navigator.pop(context), child: const Text('Back'))
            ],
          ),
        ));
  }
}
