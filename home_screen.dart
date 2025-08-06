
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<String> tasks = const [
    "Learning Programming by 12PM",
    "Learn how to cook by 1PM",
    "Learn how to play at 2PM",
    "Have lunch at 4PM",
    "Going to travel 6PM",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task List")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Good Afternoon", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(children: [Text("12"), Text("Daily")]),
                Column(children: [Text("6"), Text("Pending")]),
                Column(children: [Text("39"), Text("Total")]),
              ],
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Today's Tasks", style: TextStyle(fontSize: 18)),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(tasks[index]),
                      leading: const Icon(Icons.check_circle_outline),
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
}
