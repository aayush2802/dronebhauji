import 'package:flutter/material.dart';

class FertilizerSuggestionScreen extends StatelessWidget {
  const FertilizerSuggestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fertilizer Suggestion'),
        backgroundColor: const Color(0xFF2F3B47),
      ),
      body: const Center(
        child: Text(
          'This is the Fertilizer Suggestion screen.',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      backgroundColor: const Color(0xFF2F3B47),
    );
  }
}
