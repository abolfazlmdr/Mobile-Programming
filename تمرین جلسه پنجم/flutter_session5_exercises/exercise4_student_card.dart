// تمرین چهارم: طراحی کارت اطلاعات
// استفاده از Card، Padding، Row و Column برای نمایش اطلاعات دانشجو

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
      title: 'Student Card',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('کارت اطلاعات دانشجو'),
          centerTitle: true,
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: StudentCard(),
          ),
        ),
      ),
    );
  }
}

class StudentCard extends StatelessWidget {
  const StudentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // بخش بالایی: آواتار + اطلاعات اصلی
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.indigo,
                  ),
                ),
                const SizedBox(width: 20),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'علی احمدی',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'مهندسی کامپیوتر',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 12),
            // بخش جزئیات
            const InfoRow(
              icon: Icons.badge,
              label: 'شماره دانشجویی',
              value: '400123456',
            ),
            const SizedBox(height: 12),
            const InfoRow(
              icon: Icons.school,
              label: 'درس',
              value: 'برنامه‌نویسی موبایل',
            ),
            const SizedBox(height: 12),
            const InfoRow(
              icon: Icons.email,
              label: 'ایمیل',
              value: 'ali.ahmadi@example.com',
            ),
          ],
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.indigo, size: 22),
        const SizedBox(width: 12),
        Text(
          '$label:',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }
}
