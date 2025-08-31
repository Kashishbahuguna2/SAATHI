import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardPage extends StatelessWidget {
  final String userName;
  const DashboardPage({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Saathi", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text("Support. Empower. Connect.",
                style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic, color: Colors.white70)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Hello, $userName 👋", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: [
                  _buildFeatureCard(context, "Child Education", Icons.school, colors.primary, ChildEducationPage()),
                  _buildFeatureCard(context, "Spouse Empowerment", Icons.work, colors.secondary, SpouseEmpowermentPage()),
                  _buildFeatureCard(context, "Mental Health", Icons.health_and_safety, colors.tertiary, MentalHealthPage()),
                  _buildFeatureCard(context, "Community & NGOs", Icons.group, Colors.purple, CommunityNGOPage()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard(BuildContext context, String title, IconData icon, Color color, Widget page) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 50, color: color),
              const SizedBox(height: 10),
              Text(title, textAlign: TextAlign.center, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}

// ---------------- Feature Pages ---------------- //

class ChildEducationPage extends StatelessWidget {
  const ChildEducationPage({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Child Education")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Scholarships & Learning Resources",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text("Find government schemes, online resources, and NGOs supporting child education."),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _launchUrl("https://scholarships.gov.in"),
              child: const Text("Visit Scholarship Portal"),
            ),
          ],
        ),
      ),
    );
  }
}

class SpouseEmpowermentPage extends StatelessWidget {
  const SpouseEmpowermentPage({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Spouse Empowerment")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Skill Development & Jobs",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text("Explore skill programs and job portals to empower women financially."),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _launchUrl("https://www.ncs.gov.in"),
              child: const Text("Visit Job Portal"),
            ),
          ],
        ),
      ),
    );
  }
}

class MentalHealthPage extends StatelessWidget {
  const MentalHealthPage({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mental Health Support")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Counselling & Support",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text("Access mental health helplines and free counselling sessions."),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _launchUrl("https://www.nimhans.ac.in"),
              child: const Text("Get Mental Health Help"),
            ),
          ],
        ),
      ),
    );
  }
}

class CommunityNGOPage extends StatelessWidget {
  const CommunityNGOPage({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Community & NGOs")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("NGO & Community Support",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text("Connect with NGOs and community groups that provide support."),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _launchUrl("https://ngodarpan.gov.in"),
              child: const Text("Find NGOs"),
            ),
          ],
        ),
      ),
    );
  }
}
