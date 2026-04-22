import 'package:finals/screen/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://pbydgejgopalsjaiuptp.supabase.co",
    anonKey:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBieWRnZWpnb3BhbHNqYWl1cHRwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzI1NjYzNDgsImV4cCI6MjA4ODE0MjM0OH0.AnJj4-bBPo_J3yPfXZUCelRO0C92dw2Qk10Cf3o3x2E",
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ChatPage(username: 'Dapatnapo'),
    );
  }
}