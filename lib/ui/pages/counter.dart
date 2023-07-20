import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
        ),
        body: Center(
          child: Text('counter value => $counter'),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                // redefinie la methode build
                setState(() {
                  ++counter;
                });
              },
            ),
            const SizedBox(
              width: 8,
            ),
            FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () {
                // redefinie la methode build
                setState(() {
                  counter--;
                });
              },
            )
          ],
        ));
  }
}
