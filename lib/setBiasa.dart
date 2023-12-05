import 'package:flutter/material.dart';

class stateBiasa extends StatefulWidget {
  const stateBiasa({super.key});

  @override
  State<stateBiasa> createState() => _stateBiasaState();
}

// ignore: camel_case_types
class _stateBiasaState extends State<stateBiasa> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    debugPrint("BuildUlang");
    return Scaffold(
      appBar: AppBar(
        title: const Text("State"),
        actions: const [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "$number",
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            Text(number.toString()),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    number++;
                  });
                },
                child: const Text("build"))
          ],
        ),
      ),
    );
  }
}
