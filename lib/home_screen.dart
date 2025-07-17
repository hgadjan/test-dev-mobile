import 'package:flutter/material.dart';

import 'exercises/bonus/exercise_3_counter.dart';
import 'exercises/bonus/exercise_4_list_view.dart';
import 'exercises/bonus/exercise_5_async_data.dart';
import 'exercises/bonus/exercise_6_state_management.dart';
import 'exercises/bonus/exercise_7_navigation.dart';
import 'exercises/exercise_1_api.dart'; // Contient Exercise9ApiReflection
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
                  'Exercice 1: Gestion API Mockée',
                  'Implémentez recherche, filtrage et gestion d\'état avec API mockée',
                  Icons.api,
                  Colors.deepPurple,
                  '7.5pts',
                  () => _navigateToExercise(context, Exercise9ApiReflection()),
                ),
                _buildExerciseCard(
                  context,
                  'Exercice 2: Logique Algorithmique',
                  'Analyseur financier avec calculs complexes et filtrage',
                  Icons.calculate,
                  Colors.cyan,
                  '7.5pts',
                  () => _navigateToExercise(
                      context, Exercise10AlgorithmicLogic()),
                ),
                // Container(
                //   padding: EdgeInsets.all(8),
                //   decoration: BoxDecoration(
                //       color: Colors.amber,
                //       border: Border.symmetric(
                //           horizontal: BorderSide(
                //               width: 1,
                //               color:
                //                   const Color.fromARGB(255, 139, 138, 138)))),
                //   child: Text(
                //     'Exercices Bonus (5pts)',
                //     textAlign: TextAlign.center,
                //   ),
                // ),
                _buildExerciseCard(
                  context,
                  'Exercice 3: Bug du Compteur',
                  'Corrigez le compteur ',
                  Icons.add,
                  Colors.blue,
                  '1pts',
                  () => _navigateToExercise(context, Exercise1Counter()),
                ),
                _buildExerciseCard(
                  context,
                  'Exercice 4: Correction ListView',
                  'Corrigez le problème de débordement dans la liste',
                  Icons.list,
                  Colors.orange,
                  '1pts',
                  () => _navigateToExercise(context, Exercise3ListView()),
                ),
                _buildExerciseCard(
                  context,
                  'Exercice 5: Données Asynchrones',
                  'Complétez le chargement de données asynchrone',
                  Icons.cloud_download,
                  Colors.purple,
                  '1pts',
                  () => _navigateToExercise(context, Exercise4AsyncData()),
                ),
                _buildExerciseCard(
                  context,
                  'Exercice 6: Gestion d\'État',
                  'Corrigez le bug de mise à jour d\'état',
                  Icons.settings,
                  Colors.red,
                  '1pts',
                  () =>
                      _navigateToExercise(context, Exercise5StateManagement()),
                ),
                _buildExerciseCard(
                  context,
                  'Exercice 7: Navigation',
                  'Complétez la navigation avec passage de données',
                  Icons.navigation,
                  Colors.teal,
                  '1pts',
                  () => _navigateToExercise(context, Exercise6Navigation()),
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
