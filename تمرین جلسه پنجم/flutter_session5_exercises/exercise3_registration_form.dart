// تمرین سوم: فرم ثبت‌نام ساده
// دریافت نام، نام خانوادگی و رشته تحصیلی و نمایش آن‌ها پس از فشردن دکمه

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistrationPage(),
    );
  }
}

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController majorController = TextEditingController();

  String displayedInfo = '';

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    majorController.dispose();
    super.dispose();
  }

  void showInfo() {
    setState(() {
      final firstName = firstNameController.text.trim();
      final lastName = lastNameController.text.trim();
      final major = majorController.text.trim();

      if (firstName.isEmpty || lastName.isEmpty || major.isEmpty) {
        displayedInfo = 'لطفاً تمام فیلدها را پر کنید.';
      } else {
        displayedInfo =
            'نام: $firstName\nنام خانوادگی: $lastName\nرشته تحصیلی: $major';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('فرم ثبت‌نام ساده'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: firstNameController,
              decoration: const InputDecoration(
                labelText: 'نام',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: lastNameController,
              decoration: const InputDecoration(
                labelText: 'نام خانوادگی',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person_outline),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: majorController,
              decoration: const InputDecoration(
                labelText: 'رشته تحصیلی',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.school),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: showInfo,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text(
                'نمایش اطلاعات',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 30),
            if (displayedInfo.isNotEmpty)
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.teal.shade50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.teal.shade200),
                ),
                child: Text(
                  displayedInfo,
                  style: const TextStyle(fontSize: 18, height: 1.6),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
