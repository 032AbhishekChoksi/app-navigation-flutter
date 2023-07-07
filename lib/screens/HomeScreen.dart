import 'package:appnavigator/screens/WelcomeScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController txtName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: txtName,
              decoration: InputDecoration(
                labelText: 'Enter Name',
                hintText: 'Enter Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular((20)),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () =>
                Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        WelcomeScreen(txtName.text.toString())),
              ),
              child: const Text('Got Next Screen'),
            )
          ],
        ),
      ),
    );
  }
}
