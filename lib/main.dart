import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: _buildIconSection(
            Icons.bloodtype_outlined,
            "Donate Blood",
          ),
        ),
      ),
    );
  }

  Widget _buildIconSection(IconData icon, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xFF757175),
          radius: 80,
          child: Icon(
            icon,
            size: 100,
            color: const Color(0xFFFF5252),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          text,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: const Color(0xFFF44336),
      foregroundColor: Colors.white,
      centerTitle: true,
      title: const Text("Need Blood"),
      actions: [
        _appBarIcon(() {}, Icons.add),
      ],
    );
  }

  Widget _appBarIcon(VoidCallback onPressed, IconData icon) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
    );
  }
}