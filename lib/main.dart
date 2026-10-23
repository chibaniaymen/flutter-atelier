import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Journal',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const JournalPage(),
    );
  }
}

class JournalPage extends StatelessWidget {
  const JournalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Travel Journal'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Image Widget
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: NetworkImage('https://picsum.photos/600/400'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20), // Spacing

            // 2. Text Widget (Title)
            const Text(
              'Trip to the Mountains',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            // 3. Row Widget (Icons and Date)
            Row(
              children: const [
                Icon(Icons.calendar_today, size: 16, color: Colors.grey),
                SizedBox(width: 5),
                Text('October 23, 2026', style: TextStyle(color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 20),

            // 4. Container Widget (Description Box)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Today I hiked up the mountain. The view was absolutely incredible! '
                    'I took a lot of photos and enjoyed the fresh air.',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}