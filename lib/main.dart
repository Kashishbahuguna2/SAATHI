import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(const SaathiApp());
}

// -------------------- MAIN APP --------------------
class SaathiApp extends StatefulWidget {
  const SaathiApp({super.key});

  @override
  State<SaathiApp> createState() => _SaathiAppState();
}

class _SaathiAppState extends State<SaathiApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme(bool isDark) {
    setState(() {
      _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saathi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.indigo,
        colorScheme: ColorScheme.light(
          primary: Colors.indigo,
          secondary: Colors.green,
          tertiary: Colors.orange,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.indigo.shade200,
        colorScheme: ColorScheme.dark(
          primary: Colors.indigo.shade200,
          secondary: Colors.green.shade300,
          tertiary: Colors.orange.shade300,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.indigo.shade200,
          foregroundColor: Colors.black,
        ),
      ),
      themeMode: _themeMode,
      home: SplashScreen(onThemeChanged: _toggleTheme),
    );
  }
}

