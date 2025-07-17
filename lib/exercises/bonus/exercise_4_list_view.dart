import 'package:flutter/material.dart';

class Exercise3ListView extends StatelessWidget {
  const Exercise3ListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Élément 1',
      'Élément 2',
      'Élément 3',
      'Élément 4',
      'Élément 5',
      'Élément 6',
      'Élément 7',
      'Élément 8',
      'Élément 9',
      'Élément 10',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercice 3: ListView'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Instructions:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Corrigez le problème de débordement et rendez la liste déroulante',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Column(
            children: items
                .map((item) => ListTile(
                      title: Text(item),
                      leading: const Icon(Icons.star),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
