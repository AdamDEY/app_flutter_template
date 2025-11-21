import 'package:flutter/material.dart';

// --- DUMMY SCREENS FOR TEMPLATE (Ideally in features/ folder) ---
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => Container(
    color: Colors.blue[50],
    child: const Center(child: Text("Home Feature")),
  );
}
