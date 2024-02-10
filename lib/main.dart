import 'package:flutter/material.dart';
import 'package:student_registration_frontend/screens/details.dart';
import 'package:student_registration_frontend/screens/form.dart';
// import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Registration System',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Student Registration System'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered))
                      return Colors.deepPurple.withOpacity(0.04);
                    if (states.contains(MaterialState.focused) ||
                        states.contains(MaterialState.pressed))
                      return Colors.deepPurple.withOpacity(0.12);
                    return null; // Defer to the widget's default.
                  },
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.purple.shade100),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const StudentForm()));
              },
              child: Text('Register New Student')),
          TextButton(
              style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Colors.deepPurple.withOpacity(0.04);
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed))
                        return Colors.deepPurple.withOpacity(0.12);
                      return null; // Defer to the widget's default.
                    },
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.purple.shade100)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Details()));
              },
              child: Text('View Registered Students')),
        ],
      )),
    );
  }
}
