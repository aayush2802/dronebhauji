import 'package:flutter/material.dart';

class CropPredictionForm extends StatefulWidget {
  const CropPredictionForm({super.key});

  @override
  _CropPredictionFormState createState() => _CropPredictionFormState();
}

class _CropPredictionFormState extends State<CropPredictionForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController carbonController = TextEditingController();
  final TextEditingController organicMatterController = TextEditingController();
  final TextEditingController phosphorousController = TextEditingController();
  final TextEditingController calciumController = TextEditingController();
  final TextEditingController magnesiumController = TextEditingController();
  final TextEditingController potassiumController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFCECEE4),
      appBar: AppBar(
        title: const Text('Crop Prediction'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Container(
          width: 350,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                const Text(
                  'Find out the most suitable crop to grow in your farm',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16.0),
                buildFloatField('Carbon (g/kg)', 'Enter value (e.g., 1.2)', carbonController),
                buildFloatField('Organic Matter (g/kg)', 'Enter value (e.g., 3.5)', organicMatterController),
                buildFloatField('Phosphorous (mg/kg)', 'Enter value (e.g., 50.0)', phosphorousController),
                buildFloatField('Calcium (mmol/kg)', 'Enter value (e.g., 4.2)', calciumController),
                buildFloatField('Magnesium (mmol/kg)', 'Enter value (e.g., 1.8)', magnesiumController),
                buildFloatField('Potassium (mmol/kg)', 'Enter value (e.g., 2.5)', potassiumController),
                const SizedBox(height: 24.0),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Collect form data
                        final formData = {
                          'Carbon': double.parse(carbonController.text),
                          'Organic Matter': double.parse(organicMatterController.text),
                          'Phosphorous': double.parse(phosphorousController.text),
                          'Calcium': double.parse(calciumController.text),
                          'Magnesium': double.parse(magnesiumController.text),
                          'Potassium': double.parse(potassiumController.text),
                        };
                        // Submit logic
                        print('Form submitted successfully: $formData');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey, // Updated parameter
                      minimumSize: const Size(130, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Predict',
                      style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFloatField(String label, String hint, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $label';
          }
          if (double.tryParse(value) == null) {
            return 'Please enter a valid number';
          }
          return null;
        },
      ),
    );
  }
}