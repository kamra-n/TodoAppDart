import 'package:assignment_four/screens/AddTaskScreen/add_task_screen.dart';
import 'package:assignment_four/screens/OnBoardingScreen/onboarding_screen.dart';
import 'package:assignment_four/screens/homeScreen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const OnboardingScreen(),
        '/home': (context) => const HomeScreen(),
        '/addTask': (context) => const AddTaskScreen(),
      },
    );
  }
}
