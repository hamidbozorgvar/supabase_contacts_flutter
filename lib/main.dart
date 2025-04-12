import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:my_flutter_app/auth/login_page.dart';
import 'package:my_flutter_app/auth/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://yiabvjftokqdrfxjsejk.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlpYWJ2amZ0b2txZHJmeGpzZWprIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDM5MTczNjcsImV4cCI6MjA1OTQ5MzM2N30.z3o1GL4ZLHCL8-bnykGWdwu3uuJJgq2CsWB03VBt90E',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Supabase Auth App',
      theme: ThemeData(primarySwatch: Colors.teal),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
