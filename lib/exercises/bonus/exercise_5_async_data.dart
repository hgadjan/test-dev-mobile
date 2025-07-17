import 'package:flutter/material.dart';

class Exercise4AsyncData extends StatefulWidget {
  const Exercise4AsyncData({super.key});

  @override
  State<Exercise4AsyncData> createState() => _Exercise4AsyncDataState();
}

class _Exercise4AsyncDataState extends State<Exercise4AsyncData> {
  List<String> _data = [];
  bool _isLoading = false;

  Future<List<String>> _fetchData() async {
    await Future.delayed(const Duration(seconds: 2));
    return [
      'Utilisateur 1',
      'Utilisateur 2',
      'Utilisateur 3',
      'Utilisateur 4',
      'Utilisateur 5'
    ];
  }

  void _loadData() async {
    // TODO: Complétez cette méthode
    // 1. Définir l'état de chargement sur true
    // 2. Appeler _fetchData()
    // 3. Mettre à jour _data avec le résultat
    // 4. Définir l'état de chargement sur false
    // 5. Gérer les erreurs de manière appropriée
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercice 4: Données Asynchrones'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Instructions:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Complétez la méthode _loadData pour:\n'
              '1. Afficher un indicateur de chargement\n'
              '2. Récupérer les données de manière asynchrone\n'
              '3. Mettre à jour l\'interface utilisateur avec les résultats',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _loadData,
              child: const Text('Charger les Données'),
            ),
            const SizedBox(height: 20),
            if (_isLoading)
              const Center(child: CircularProgressIndicator())
            else if (_data.isEmpty)
              const Text('Aucune donnée chargée pour le moment')
            else
              Expanded(
                child: ListView.builder(
                  itemCount: _data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_data[index]),
                      leading: const Icon(Icons.person),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
