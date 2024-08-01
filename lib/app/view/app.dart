import 'package:flutter/material.dart';
import 'package:flutter_todos/counter/counter.dart';
import 'package:flutter_todos/l10n/l10n.dart';
import 'package:todos_repository/src/todos_repository.dart';

class App extends StatelessWidget {
  const App({super.key, required TodosRepository todosRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const CounterPage(),
    );
  }
}
