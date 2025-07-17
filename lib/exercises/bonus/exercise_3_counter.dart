import 'package:flutter/material.dart';

class Exercise1Counter extends StatefulWidget {
  const Exercise1Counter({super.key});

  @override
  State<Exercise1Counter> createState() => _Exercise1CounterState();
}

class _Exercise1CounterState extends State<Exercise1Counter> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter = _counter * 2;
    });
  }

  // Todo : _decrementCounter, reinitCounter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercice 1: Bug du Compteur'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            const Text(
              'Instructions:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Corrigez le bug: Le compteur doit s\'incrémenter et se d\'ecrementer de 1',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            const Text(
              'Compte actuel:',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: _incrementCounter,
                            child: Row(
                              children: [const Icon(Icons.remove), Text('1')],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: _incrementCounter,
                            child: Row(
                              children: [const Icon(Icons.add), Text('1')],
                            ),
                          ),
                        ]),
                    Padding(padding: EdgeInsets.all(20)),
                    IconButton(
                      onPressed: _incrementCounter,
                      icon: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.refresh),
                          Text('Reinitialiser')
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
