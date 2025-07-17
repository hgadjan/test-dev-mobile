import 'package:flutter/material.dart';

import 'exercises/exercise_1_api.dart'; // Contient Exercise01ApiReflection
import 'exercises/exercise_2_algo.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool loading = true;

  @override
  void initState() {
    super.initState();
  }

  void _navigateToExercise(BuildContext context, Widget exercise) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => exercise),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BCR : TEST PRATIQUE"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildExerciseCard(
                  context,
                  'Exercice 01: Gestion API Mockée',
                  'Implémentez recherche, filtrage et gestion d\'état avec API mockée',
                  Icons.api,
                  Colors.deepPurple,
                  '10pts',
                  () => _navigateToExercise(context, Exercise01ApiReflection()),
                ),
                _buildExerciseCard(
                  context,
                  'Exercice 02: Logique Algorithmique',
                  'Analyseur financier avec calculs complexes et filtrage',
                  Icons.calculate,
                  Colors.cyan,
                  '10pts',
                  () => _navigateToExercise(
                      context, Exercise02AlgorithmicLogic()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExerciseCard(
    BuildContext context,
    String title,
    String description,
    IconData icon,
    Color color,
    String point,
    VoidCallback onTap,
  ) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        isThreeLine: true,
        subtitle: Text(description),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_forward_ios),
            Text(
              point,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.green),
            ),
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}
