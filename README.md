# Flutter App - Exercices de Test Pratique

Cette application Flutter contient des exercices pratiques con�us pour tester les comp�tences en d�veloppement Flutter. Chaque exercice contient des t�ches TODO sp�cifiques qui doivent �tre impl�ment�es.


## Exercices Principaux

### Exercice 1 : Gestion d'API Mock�e
**Fichier :** `lib/exercises/exercise_1_api.dart`

**Type :** Exercice de r�flexion sur la gestion d'�tat et les appels API

**Objectif :** Impl�menter un syst�me de gestion d'utilisateurs avec API mock�e

**TODO � impl�menter :**
- `_loadUsers()` : Charger les utilisateurs avec gestion d'�tat de loading
- `_loadStatistics()` : Charger et afficher les statistiques des utilisateurs
- `_searchUsers()` : Recherche en temps r�el avec filtrage
- `_filterByDepartment()` : Filtrage par r�gion avec combinaison de recherche



### Exercice 2 : Logique Algorithmique
**Fichier :** `lib/exercises/exercise_2_algo.dart`

**Type :** Exercice de r�flexion sur la logique algorithmique et les calculs

**Objectif :** Impl�menter un analyseur financier avec calculs complexes

**TODO � impl�menter :**
- `_calculateAnalytics()` : Calculs financiers (solde, revenus, d�penses)
- `_filterTransactionsByPeriod()` : Filtrage par p�riode avec logique de date
- `_filterTransactionsByCategory()` : Filtrage par cat�gorie
- `_getTopExpenseCategories()` : Tri et agr�gation des donn�es
- `_calculateAverageExpensePerDay()` : Calculs de moyennes complexes
- `_getBudgetHealthStatus()` : Logique conditionnelle de sant� financi�re


## Exercices Bonus

Les exercices bonus se trouvent dans le dossier `lib/exercises/bonus/` et couvrent des concepts Flutter de base :

- **Exercise 3 :** Compteur avec gestion d'�tat
- **Exercise 4 :** ListView avec gestion de d�filement
- **Exercise 5 :** Donn�es asynchrones
- **Exercise 6 :** Gestion d'�tat avanc�e
- **Exercise 7 :** Navigation entre �crans

## Instructions pour les Candidats

### Avant de commencer :
1. Assurez-vous d'avoir Flutter install� sur votre machine
2. V�rifiez que `flutter doctor` ne montre pas d'erreurs critiques
3. Testez l'application avec `flutter run`

### Pendant l'exercice :
1. Lisez attentivement les instructions dans chaque fichier
2. Impl�mentez les m�thodes marqu�es avec `TODO`
3. Testez votre code r�guli�rement
4. G�rez les cas d'erreur appropri�s
5. Suivez les bonnes pratiques Flutter

### R�gles importantes :
- **Ne pas modifier** les mod�les de donn�es existants
- **Ne pas supprimer** les commentaires TODO
- **Impl�menter uniquement** les m�thodes demand�es
- **Tester** chaque fonctionnalit� avant de passer � la suivante
- **G�rer** les cas d'erreur et les �tats de chargement

## Conseils
1. **Commencez par comprendre** la structure du projet
2. **Lisez tous les TODO** avant de commencer � coder
3. **Testez fr�quemment** votre code
4. **G�rez les cas d'erreur** (connexion r�seau, donn�es vides, etc.)
5. **Optimisez les performances** (�vitez les appels API inutiles)
6. **Documentez votre code** si n�cessaire
7. **Demandez des clarifications** si les instructions ne sont pas claires

## Commandes utiles

```bash
# D�marrer l'application
flutter run

# Nettoyer le projet
flutter clean

# Obtenir les d�pendances
flutter pub get

# Analyser le code
flutter analyze

# Formater le code
flutter format .
```



## API Mock Services

Les services API sont simul�s avec des d�lais r�alistes pour tester la gestion des �tats de chargement :

- **MockUserService** : Gestion des utilisateurs avec recherche et filtrage
- **FinancialDataService** : Gestion des transactions financi�res

## Support

Si vous rencontrez des difficult�s techniques :
1. V�rifiez que Flutter est correctement install�
2. Assurez-vous que les d�pendances sont install�es (`flutter pub get`)
4. Demandez de l'aide au superviseur si n�cessaire

---

**Bonne chance !**