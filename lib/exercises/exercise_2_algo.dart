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
        amount: 3500.0,
        date: DateTime.now().subtract(Duration(days: 1)),
        category: 'Salaire',
        type: 'gain'),
    Transaction(
        id: '2',
        description: 'Supermarché',
        amount: 85.50,
        date: DateTime.now().subtract(Duration(days: 2)),
        category: 'Alimentation',
        type: 'depense'),
    Transaction(
        id: '3',
        description: 'Essence',
        amount: 65.00,
        date: DateTime.now().subtract(Duration(days: 3)),
        category: 'Transport',
        type: 'depense'),
    Transaction(
        id: '4',
        description: 'Freelance',
        amount: 750.0,
        date: DateTime.now().subtract(Duration(days: 4)),
        category: 'Freelance',
        type: 'gain'),
    Transaction(
        id: '5',
        description: 'Restaurant',
        amount: 42.30,
        date: DateTime.now().subtract(Duration(days: 5)),
        category: 'Alimentation',
        type: 'depense'),
    Transaction(
        id: '6',
        description: 'Loyer',
        amount: 1200.0,
        date: DateTime.now().subtract(Duration(days: 6)),
        category: 'Logement',
        type: 'depense'),
    Transaction(
        id: '7',
        description: 'Électricité',
        amount: 89.20,
        date: DateTime.now().subtract(Duration(days: 7)),
        category: 'Factures',
        type: 'depense'),
    Transaction(
        id: '8',
        description: 'Vente en ligne',
        amount: 125.0,
        date: DateTime.now().subtract(Duration(days: 8)),
        category: 'Vente',
        type: 'gain'),
    Transaction(
        id: '9',
        description: 'Cinéma',
        amount: 28.00,
        date: DateTime.now().subtract(Duration(days: 9)),
        category: 'Loisirs',
        type: 'depense'),
    Transaction(
        id: '10',
        description: 'Bonus',
        amount: 500.0,
        date: DateTime.now().subtract(Duration(days: 10)),
        category: 'Bonus',
        type: 'gain'),
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

class Exercise10AlgorithmicLogic extends StatefulWidget {
  const Exercise10AlgorithmicLogic({super.key});

  @override
  State<Exercise10AlgorithmicLogic> createState() =>
      _Exercise10AlgorithmicLogicState();
}

class _Exercise10AlgorithmicLogicState
    extends State<Exercise10AlgorithmicLogic> {
  List<Transaction> _transactions = [];
  Map<String, double> _categoryTotals = {};
  Map<String, int> _categoryStats = {};
  double _totalSolde = 0.0;
  double _totalRevenue = 0.0;
  double _totalDepense = 0.0;
  String _selectedPeriod = '30 jours';
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
    // 5. Calculer les statistiques par catégorie (nombre de transactions)
    // 6. Utiliser setState pour mettre à jour l'interface

    print('Calcul des analyses...');
  }

  List<Transaction> _filterTransactionsByPeriod(String period) {
    // TODO: Implémentez cette méthode
    // 1. Selon la période sélectionnée ('7 jours', '30 jours', '90 jours', '1 an')
    // 2. Filtrer les transactions selon la date
    // 3. Retourner la liste filtrée

    return _transactions;
  }

  List<Transaction> _filterTransactionsByCategory(String category) {
    // TODO: Implémentez cette méthode
    // 1. Si category == 'Toutes', retourner toutes les transactions
    // 2. Sinon, filtrer les transactions par catégorie
    // 3. Retourner la liste filtrée

    return _transactions;
  }

  Map<String, double> _getTopExpenseCategories() {
    // TODO: Implémentez cette méthode
    // 1. Créer un Map avec les catégories de dépenses et leurs totaux
    // 2. Trier par montant décroissant
    // 3. Retourner les 5 premières catégories
    // 4. Logique complexe: gérer les cas où il n'y a pas assez de catégories

    return {'Alimentation': 127.80, 'Transport': 65.00, 'Logement': 1200.00};
  }

  double _calculateAverageExpensePerDay() {
    // TODO: Implémentez cette méthode
    // 1. Filtrer les transactions de type 'depense'
    // 2. Calculer la somme totale des dépenses
    // 3. Calculer le nombre de jours uniques avec des dépenses
    // 4. Retourner la moyenne (total / nombre de jours)
    // 5. Gérer le cas où il n'y a pas de dépenses

    return 0.0;
  }

  String _getBudgetHealthStatus() {
    // TODO: Implémentez cette méthode (logique complexe)
    // 1. Calculer le ratio dépenses/revenus
    // 2. Si ratio < 0.5: "Excellent"
    // 3. Si ratio < 0.7: "Bon"
    // 4. Si ratio < 0.9: "Attention"
    // 5. Si ratio >= 0.9: "Critique"
    // 6. Gérer le cas où il n'y a pas de revenus

    return 'À calculer';
  }

  Color _getHealthStatusColor(String status) {
    // TODO: Implémentez cette méthode
    // Retourner une couleur selon le statut de santé du budget
    switch (status) {
      case 'Excellent':
        return Colors.green;
      case 'Bon':
        return Colors.lightGreen;
      case 'Attention':
        return Colors.orange;
      case 'Critique':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  void _onPeriodChanged(String period) {
    // TODO: Implémentez cette méthode
    // 1. Mettre à jour _selectedPeriod
    // 2. Filtrer les transactions selon la nouvelle période
    // 3. Recalculer les analyses
    // 4. Mettre à jour l'interface

    setState(() {
      _selectedPeriod = period;
    });
  }

  void _onCategoryChanged(String category) {
    // TODO: Implémentez cette méthode
    // 1. Mettre à jour _selectedCategory
    // 2. Filtrer les transactions selon la nouvelle catégorie
    // 3. Recalculer les analyses
    // 4. Mettre à jour l'interface

    setState(() {
      _selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercice 10: Logique Algorithmique'),
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
              'Exercice de Réflexion - Analyseur Financier:\n'
              '1. Calculer les totaux (revenus, dépenses, solde)\n'
              '2. Implémenter le filtrage par période et catégorie\n'
              '3. Calculer les statistiques avancées\n'
              '4. Déterminer la santé du budget\n'
              '5. Gérer les cas complexes et les erreurs\n'
              '6. Logique algorithmique complexe requise',
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
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Santé du Budget:',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color:
                                _getHealthStatusColor(_getBudgetHealthStatus()),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            _getBudgetHealthStatus(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
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
                    value: _selectedPeriod,
                    decoration: const InputDecoration(
                      labelText: 'Période',
                      border: OutlineInputBorder(),
                    ),
                    items: ['7 jours', '30 jours', '90 jours', '1 an']
                        .map((period) => DropdownMenuItem(
                              value: period,
                              child: Text(period),
                            ))
                        .toList(),
                    onChanged: (value) => _onPeriodChanged(value!),
                  ),
                ),
                const SizedBox(width: 16),
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

            // Statistiques avancées
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Statistiques Avancées',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Dépense moyenne/jour:'),
                        Text(
                          '${_calculateAverageExpensePerDay().toStringAsFixed(2)} €',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Nombre de transactions:'),
                        Text(
                          '${_transactions.length}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Top catégories de dépenses
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Top Catégories de Dépenses',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    ..._getTopExpenseCategories()
                        .entries
                        .map(
                          (entry) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(entry.key),
                                Text(
                                  '${entry.value.toStringAsFixed(2)} €',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ],
                ),
              ),
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
                            '${transaction.type == 'gain' ? '+' : '-'}${transaction.amount.toStringAsFixed(2)} €',
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
          '${amount.toStringAsFixed(2)} €',
          style: TextStyle(
            fontSize: 20,
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
