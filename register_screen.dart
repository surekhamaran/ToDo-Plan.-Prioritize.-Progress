
import 'package:flutter/material.dart';
import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              "Welcome to Onboard!\nLet’s help to meet up your tasks.",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            const TextField(decoration: InputDecoration(labelText: "Full Name")),
            const TextField(decoration: InputDecoration(labelText: "Email")),
            const TextField(obscureText: true, decoration: InputDecoration(labelText: "Password")),
            const TextField(obscureText: true, decoration: InputDecoration(labelText: "Confirm Password")),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: const Text("Register")),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
              },
              child: const Text("Already have an account? Sign In"),
            )
          ],
        ),
      ),
    );
  }
}
