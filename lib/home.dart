import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int num = 0; // MUST be inside State class

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                num.toString(),
                style: const TextStyle(
                  fontSize: 80,
                  color: Colors.blue,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        num++;
                      });
                    },
                    icon: const Icon(Icons.add),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        num--;
                      });
                    },
                    icon: const Icon(Icons.remove),
                  ),Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}