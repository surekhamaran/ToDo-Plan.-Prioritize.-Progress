
import 'package:flutter/material.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text("Welcome back", style: TextStyle(fontSize: 22)),
            const SizedBox(height: 20),
            const TextField(decoration: InputDecoration(labelText: "Email")),
            const TextField(obscureText: true, decoration: InputDecoration(labelText: "Password")),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
              },
              child: const Text("Login"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Forget password?"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Don’t have an account? Sign Up"),
            )
          ],
        ),
      ),
    );
  }
}
