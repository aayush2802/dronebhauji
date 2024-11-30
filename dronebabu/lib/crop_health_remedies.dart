import 'package:flutter/material.dart';

class CropHealthRemediesScreen extends StatelessWidget {
  const CropHealthRemediesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crop Health Remedies'),
        backgroundColor: const Color(0xFF2F3B47),
      ),
      body: const Center(
        child: Text(
          'This is the Crop Health Remedies screen.',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      backgroundColor: const Color(0xFF2F3B47),
    );
  }
}
