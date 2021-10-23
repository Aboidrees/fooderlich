import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';
import 'package:fooderlich/home.dart';

void main() => runApp(const Fooderlich());

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.light();
    final darkTheme = FooderlichTheme.dark();
    return MaterialApp(
      theme: theme,
      darkTheme: darkTheme,
      title: 'Fooderlich',
      home: const Home(),
    );
  }
}
