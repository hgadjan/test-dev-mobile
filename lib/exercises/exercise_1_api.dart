import 'dart:async';

import 'package:flutter/material.dart';

// Modèle de données pour un utilisateur
class User {
  final int id;
  final String name;
  final String email;
  final String region;
  final bool isActive;
  final DateTime lastLogin;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.region,
    required this.isActive,
    required this.lastLogin,
  });
}

// API Mock Service
class MockUserService {
  static List<User> _users = [
    User(
        id: 1,
        name: 'Mahamadou ibrahim',
        email: 'ibrahim@gmail.com',
        region: 'Zinder',
        isActive: true,
        lastLogin: DateTime.now().subtract(Duration(hours: 2))),
    User(
        id: 2,
        name: 'Boureima Alhassane',
        email: 'boureima@gmail.com',
        region: 'Dosso',
        isActive: false,
        lastLogin: DateTime.now().subtract(Duration(days: 5))),
    User(
        id: 3,
        name: 'Kabirou Alio',
        email: 'kalio@gmail.com',
        region: 'Niamey',
        isActive: true,
        lastLogin: DateTime.now().subtract(Duration(minutes: 30))),
    User(
        id: 4,
        name: 'Dimachi Garba',
        email: 'dim@gmail.com',
        region: 'Niamey',
        isActive: true,
        lastLogin: DateTime.now().subtract(Duration(hours: 1))),
    User(
        id: 5,
        name: 'Hamssatou Illiassou',
        email: 'hamsa@gmail.com',
        region: 'Maradi',
        isActive: false,
        lastLogin: DateTime.now().subtract(Duration(days: 10))),
    User(
        id: 6,
        name: 'Foureratou Hassan',
        email: 'fourera@gmail.com',
        region: 'Diffa',
        isActive: true,
        lastLogin: DateTime.now().subtract(Duration(hours: 4))),
    User(
        id: 7,
        name: 'Sani Moustapha',
        email: 'sani@gmail.com',
        region: 'Agadez',
        isActive: true,
        lastLogin: DateTime.now().subtract(Duration(minutes: 15))),
    User(
        id: 8,
        name: 'Zeinabou Hamissou',
        email: 'zeinabou@gmail.com',
        region: 'Diffa',
        isActive: false,
        lastLogin: DateTime.now().subtract(Duration(days: 2))),
  ];

  // Simule un appel API avec délai
  static Future<List<User>> fetchUsers() async {
    await Future.delayed(Duration(milliseconds: 1500));
    return List.from(_users);
  }

  // Simule un appel API pour chercher des utilisateurs
  static Future<List<User>> searchUsers(String query) async {
    await Future.delayed(Duration(milliseconds: 800));
    return _users
        .where((user) =>
            user.name.toLowerCase().contains(query.toLowerCase()) ||
            user.email.toLowerCase().contains(query.toLowerCase()) ||
            user.region.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  // Simule un appel API pour filtrer par département
  static Future<List<User>> filterByDepartment(String region) async {
    await Future.delayed(Duration(milliseconds: 600));
    return _users.where((user) => user.region == region).toList();
  }

  // Simule un appel API pour obtenir les statistiques
  static Future<Map<String, int>> getStatistics() async {
    await Future.delayed(Duration(milliseconds: 1000));
    return {
      'total': _users.length,
      'active': _users.where((u) => u.isActive).length,
      'inactive': _users.where((u) => !u.isActive).length,
      'agadez': _users.where((u) => u.region == 'Agadez').length,
      'dosso': _users.where((u) => u.region == 'Dosso').length,
      'diffa': _users.where((u) => u.region == 'Diffa').length,
      'tillabery': _users.where((u) => u.region == 'Tillabery').length,
      'tahoua': _users.where((u) => u.region == 'Tahoua').length,
      'niamey': _users.where((u) => u.region == 'Niamey').length,
      'maradi': _users.where((u) => u.region == 'Maradi').length,
      'zinder': _users.where((u) => u.region == 'Zinder').length,
    };
  }
}

class Exercise9ApiReflection extends StatefulWidget {
  const Exercise9ApiReflection({super.key});

  @override
  State<Exercise9ApiReflection> createState() => _Exercise9ApiReflectionState();
}

class _Exercise9ApiReflectionState extends State<Exercise9ApiReflection> {
  List<User> _users = [];
  List<User> _filteredUsers = [];
  Map<String, int> _statistics = {};
  bool _isLoading = false;
  String _selectedDepartment = 'Tous';
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadUsers();
    _loadStatistics();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _loadUsers() async {
    // TODO: Implémentez cette méthode
    // 1. Mettre _isLoading à true
    // 2. Appeler MockUserService.fetchUsers()
    // 3. Mettre à jour _users et _filteredUsers
    // 4. Mettre _isLoading à false
    // 5. Gérer les erreurs avec try-catch

    print('Chargement des utilisateurs...');
  }

  void _loadStatistics() async {
    // TODO: Implémentez cette méthode
    // 1. Appeler MockUserService.getStatistics()
    // 2. Mettre à jour _statistics

    print('Chargement des statistiques...');
  }

  void _searchUsers(String query) async {
    // TODO: Implémentez cette méthode
    // 1. Si query est vide, restaurer _users dans _filteredUsers
    // 2. Sinon, appeler MockUserService.searchUsers(query)
    // 3. Mettre à jour _filteredUsers
    // 4. Prendre en compte le filtre département actuel

    print('Recherche: $query');
  }

  void _filterByDepartment(String region) async {
    // TODO: Implémentez cette méthode
    // 1. Mettre à jour _selectedDepartment
    // 2. Si region == 'Tous', afficher tous les utilisateurs
    // 3. Sinon, appeler MockUserService.filterByDepartment(region)
    // 4. Mettre à jour _filteredUsers
    // 5. Prendre en compte la recherche actuelle

    print('Filtre département: $region');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercice 9: Gestion API Mockée'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
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
              'Implémentez la logique de gestion d\'API:\n'
              '1. Chargement des utilisateurs avec état de loading\n'
              '2. Recherche en temps réel avec debouncing\n'
              '3. Filtrage par département\n'
              '4. Combinaison recherche + filtre\n'
              '5. Affichage des statistiques\n'
              '6. Gestion des erreurs',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),

            // Statistiques
            if (_statistics.isNotEmpty) ...[
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildStatItem(
                        'Total', _statistics['total'] ?? 0, Colors.blue),
                    _buildStatItem(
                        'Actifs', _statistics['active'] ?? 0, Colors.green),
                    _buildStatItem(
                        'Inactifs', _statistics['inactive'] ?? 0, Colors.red),
                    _buildStatItem('IT', _statistics['it'] ?? 0, Colors.purple),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],

            // Recherche et filtre
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      labelText: 'Rechercher...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: _searchUsers,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _selectedDepartment,
                    decoration: const InputDecoration(
                      labelText: 'Région',
                      border: OutlineInputBorder(),
                    ),
                    items: [
                      'Tous',
                      'Agadez',
                      'Dosso',
                      'Diffa',
                      'Tahoua',
                      'Tillabery',
                      'Niamey',
                      'Maradi',
                      'Zinder'
                    ]
                        .map((dept) => DropdownMenuItem(
                              value: dept,
                              child: Text(dept),
                            ))
                        .toList(),
                    onChanged: (value) => _filterByDepartment(value!),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Liste des utilisateurs
            Expanded(
              child: _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : _filteredUsers.isEmpty
                      ? const Center(
                          child: Text(
                            'Aucun utilisateur trouvé',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        )
                      : ListView.builder(
                          itemCount: _filteredUsers.length,
                          itemBuilder: (context, index) {
                            final user = _filteredUsers[index];
                            return Card(
                              margin: const EdgeInsets.symmetric(vertical: 4),
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: user.isActive
                                      ? Colors.green
                                      : Colors.grey,
                                  child: Text(user.name[0]),
                                ),
                                title: Text(user.name),
                                subtitle:
                                    Text('${user.email} • ${user.region}'),
                                trailing: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      user.isActive
                                          ? Icons.check_circle
                                          : Icons.cancel,
                                      color: user.isActive
                                          ? Colors.green
                                          : Colors.red,
                                      size: 20,
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      _formatLastLogin(user.lastLogin),
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(String label, int value, Color color) {
    return Column(
      children: [
        Text(
          value.toString(),
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  String _formatLastLogin(DateTime lastLogin) {
    final now = DateTime.now();
    final difference = now.difference(lastLogin);

    if (difference.inMinutes < 60) {
      return '${difference.inMinutes}m';
    } else if (difference.inHours < 24) {
      return '${difference.inHours}h';
    } else {
      return '${difference.inDays}j';
    }
  }
}
