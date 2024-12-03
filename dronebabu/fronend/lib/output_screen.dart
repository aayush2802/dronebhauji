import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  const OutputScreen({super.key});  // Marking the constructor as const

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Output Screen'),  // Text is const
        backgroundColor: const Color(0xFF2F3B47),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        padding: const EdgeInsets.all(8.0),  // EdgeInsets is const
        childAspectRatio: 1.5,
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/crop_recommendation'),
            child: const TileWidget(title: 'Crop Recommendation'),  // TileWidget is const
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/fertilizer_suggestion'),
            child: const TileWidget(title: 'Fertilizer Suggestion'),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/disease_detection'),
            child: const TileWidget(title: 'Disease Detection'),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/crop_health_remedies'),
            child: const TileWidget(title: 'Crop Health Remedies'),
          ),
        ],
      ),
    );
  }
}

class TileWidget extends StatelessWidget {
  final String title;

  const TileWidget({required this.title, super.key});  // Constructor is const

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontSize: 16),  // TextStyle is const
        ),
      ),
    );
  }
}
