import 'package:flutter/material.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

class FeaturesPage extends StatelessWidget {
  const FeaturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text("Features")),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.change_history, color: colors.primary),
            title: const Text("Story Telling ")

          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.supervisor_account, color: colors.secondary),
            title: const Text("Sucess Stories")
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.support, color: colors.tertiary),
            title: const Text("peer support network"),
          ),
           const Divider(),
           ListTile(
             leading: Icon(Icons.calendar_month, color: colors.tertiary),
             title: const Text("Event calender"),
           ),
           const Divider(),
           ListTile(
             leading: Icon(Icons.article, color: colors.tertiary),
             title: const Text("Awareness Articles"),
           ),
           const Divider(),
           ListTile(
             leading: Icon(Icons.health_and_safety, color: colors.tertiary),
             title: const Text("Meditation and relaxation"),
           ),
           const Divider(),
           ListTile(
             leading: Icon(Icons.format_quote, color: colors.tertiary),
             title: const Text("Motivational Quotes"),
           ),

        ],
      ),
    );
  }
}
