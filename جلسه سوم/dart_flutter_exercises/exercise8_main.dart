// تمرین ۸: یک پروژه Flutter ایجاد کنید که عبارت «برنامه‌نویسی موبایل» را در مرکز صفحه نمایش دهد.
// این فایل را به عنوان lib/main.dart در پروژه Flutter خود قرار دهید.

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
      home: Scaffold(
        body: Center(
          child: Text(
            'برنامه‌نویسی موبایل',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
