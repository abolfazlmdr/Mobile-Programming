// تمرین اول: صفحه معرفی دانشجو
// صفحه‌ای که نام، رشته، شماره دانشجویی و تصویر نمادین دانشجو را نمایش می‌دهد
// استفاده از Scaffold، AppBar، Column، Text و Icon

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('صفحه معرفی دانشجو'),
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person,
                size: 100,
                color: Colors.blue,
              ),
              SizedBox(height: 24),
              Text(
                'نام: علی احمدی',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              Text(
                'رشته: مهندسی کامپیوتر',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 12),
              Text(
                'شماره دانشجویی: 400123456',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 12),
              Text(
                'درس: برنامه‌نویسی موبایل',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
