import 'dart:math' as math;

import 'package:flutter/material.dart';

// Modèle pour une transaction financière
class Transaction {
  final String id;
  final String description;
  final double amount;
  final DateTime date;
  final String category;
  final String type; // 'gain' ou 'depense'

  Transaction({
    required this.id,
    required this.description,
    required this.amount,
    required this.date,
    required this.category,
    required this.type,
  });
}

// Service de données mockées pour les transactions
class FinancialDataService {
  static List<Transaction> _transactions = [
    Transaction(
        id: '1',
        description: 'Salaire',
        amount: 350000.0,
        date: DateTime.now().subtract(Duration(days: 1)),
        category: 'Salaire',
        type: 'gain'),
    Transaction(
        id: '2',
        description: 'Supermarché',
        amount: 85000.00,
        date: DateTime.now().subtract(Duration(days: 2)),
        category: 'Alimentation',
        type: 'depense'),
    Transaction(
        id: '3',
        description: 'Essence',
        amount: 6500.00,
        date: DateTime.now().subtract(Duration(days: 3)),
        category: 'Transport',
        type: 'depense'),
    Transaction(
        id: '4',
        description: 'Freelance',
        amount: 75000.0,
        date: DateTime.now().subtract(Duration(days: 4)),
        category: 'Freelance',
        type: 'gain'),
    Transaction(
        id: '5',
        description: 'Restaurant',
        amount: 4200.00,
        date: DateTime.now().subtract(Duration(days: 5)),
        category: 'Alimentation',
        type: 'depense'),
    Transaction(
        id: '6',
        description: 'Loyer',
        amount: 120000.0,
        date: DateTime.now().subtract(Duration(days: 6)),
        category: 'Logement',
        type: 'depense'),
    Transaction(
        id: '7',
        description: 'Électricité',
        amount: 13000.00,
        date: DateTime.now().subtract(Duration(days: 7)),
        category: 'Factures',
        type: 'depense'),
    Transaction(
        id: '8',
        description: 'Vente en ligne',
        amount: 12500.0,
        date: DateTime.now().subtract(Duration(days: 8)),
        category: 'Vente',
        type: 'gain'),
    Transaction(
        id: '9',
        description: 'Cinéma',
        amount: 2800.00,
        date: DateTime.now().subtract(Duration(days: 9)),
        category: 'Loisirs',
        type: 'depense'),
    Transaction(
        id: '10',
        description: 'Bonus',
        amount: 5000.0,
        date: DateTime.now().subtract(Duration(days: 10)),
        category: 'Bonus',
        type: 'gain'),
    Transaction(
        id: '11',
        description: 'Eaux',
        amount: 5000.00,
        date: DateTime.now().subtract(Duration(days: 11)),
        category: 'Factures',
        type: 'depense'),
  ];

  static List<Transaction> getAllTransactions() {
    return _transactions;
  }

  static List<Transaction> getTransactionsByPeriod(
      DateTime start, DateTime end) {
    return _transactions
        .where((t) => t.date.isAfter(start) && t.date.isBefore(end))
        .toList();
  }

  static List<Transaction> getTransactionsByCategory(String category) {
    return _transactions.where((t) => t.category == category).toList();
  }

  static List<Transaction> getTransactionsByType(String type) {
    return _transactions.where((t) => t.type == type).toList();
  }
}

class Exercise02AlgorithmicLogic extends StatefulWidget {
  const Exercise02AlgorithmicLogic({super.key});

  @override
  State<Exercise02AlgorithmicLogic> createState() =>
      _Exercise02AlgorithmicLogicState();
}

class _Exercise02AlgorithmicLogicState
    extends State<Exercise02AlgorithmicLogic> {
  List<Transaction> _transactions = [];
  Map<String, double> _categoryTotals = {};
  Map<String, int> _categoryStats = {};
  double _totalSolde = 0.0;
  double _totalRevenue = 0.0;
  double _totalDepense = 0.0;
  String _selectedCategory = 'Toutes';

  @override
  void initState() {
    super.initState();
    _loadTransactions();
  }

  void _loadTransactions() {
    _transactions = FinancialDataService.getAllTransactions();
    _calculateAnalytics();
  }

  void _calculateAnalytics() {
    // TODO: Implémentez cette méthode
    // 1. Calculer le total des revenus (_totalRevenue)
    // 2. Calculer le total des dépenses (_totalDepense)
    // 3. Calculer le solde total (_totalSolde = revenus - dépenses)
    // 4. Calculer les totaux par catégorie
    // 5. Utiliser setState pour mettre à jour l'interface

    print(
      'Calcul des analyses...',
    );
  }

  List<Transaction> _filterTransactionsByCategory(String category) {
    // TODO: Implémentez cette méthode
    // 1. Si category == 'Toutes', retourner toutes les transactions
    // 2. Sinon, filtrer les transactions par catégorie
    // 3. Retourner la liste filtrée

    return [];
  }

  void _onCategoryChanged(String category) {
    // TODO: Implémentez cette méthode
    // 1. Mettre à jour _selectedCategory
    // 2. Filtrer les transactions selon la nouvelle catégorie
    // 3. Recalculer les analyses
    // 4. Mettre à jour l'interface
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercice 02: Logique Algorithmique'),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Instructions
            const Text(
              'Instructions:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Exercice  - Analyseur Financier:\n'
              '1. Calculer les totaux (revenus, dépenses, solde)\n'
              '2. Implémenter le filtrage par catégorie\n',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),

            // Résumé financier
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Text(
                      'Résumé Financier',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildFinancialSummary(
                            'Solde', _totalSolde, Colors.blue),
                        _buildFinancialSummary(
                            'Revenus', _totalRevenue, Colors.green),
                        _buildFinancialSummary(
                            'Dépenses', _totalDepense, Colors.red),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Filtres
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _selectedCategory,
                    decoration: const InputDecoration(
                      labelText: 'Catégorie',
                      border: OutlineInputBorder(),
                    ),
                    items: [
                      'Toutes',
                      'Alimentation',
                      'Transport',
                      'Logement',
                      'Factures',
                      'Loisirs',
                      'Salaire',
                      'Freelance'
                    ]
                        .map((category) => DropdownMenuItem(
                              value: category,
                              child: Text(category),
                            ))
                        .toList(),
                    onChanged: (value) => _onCategoryChanged(value!),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Liste des transactions
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Transactions Récentes',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: math.min(_transactions.length, 5),
                      itemBuilder: (context, index) {
                        final transaction = _transactions[index];
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: transaction.type == 'gain'
                                ? Colors.green
                                : Colors.red,
                            child: Icon(
                              transaction.type == 'gain'
                                  ? Icons.arrow_upward
                                  : Icons.arrow_downward,
                              color: Colors.white,
                            ),
                          ),
                          title: Text(transaction.description),
                          subtitle: Text(
                              '${transaction.category} • ${transaction.date.day}/${transaction.date.month}'),
                          trailing: Text(
                            '${transaction.type == 'gain' ? '+' : '-'}${transaction.amount.toStringAsFixed(2)}',
                            style: TextStyle(
                              color: transaction.type == 'gain'
                                  ? Colors.green
                                  : Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFinancialSummary(String label, double amount, Color color) {
    return Column(
      children: [
        Text(
          '${amount.toStringAsFixed(2)}',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
