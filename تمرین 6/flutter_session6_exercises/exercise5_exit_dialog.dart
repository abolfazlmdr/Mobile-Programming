// تمرین پنجم: Dialog تأیید خروج
// با کلیک روی دکمه خروج، Dialog تأیید نمایش داده می‌شود.

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void showExitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('تأیید خروج'),
          content: const Text('آیا مطمئن هستید که می‌خواهید از برنامه خارج شوید؟'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // بستن Dialog
              },
              child: const Text('انصراف'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // بستن Dialog
                // در اپ واقعی اینجا می‌توان از SystemNavigator.pop() استفاده کرد
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('خروج از برنامه')),
                );
              },
              child: const Text(
                'خروج',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تأیید خروج'),
        centerTitle: true,
        backgroundColor: Colors.red.shade700,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.exit_to_app, size: 80, color: Colors.red),
            const SizedBox(height: 24),
            const Text(
              'برای خروج از برنامه روی دکمه زیر کلیک کنید',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () => showExitDialog(context),
              icon: const Icon(Icons.logout),
              label: const Text('خروج از برنامه'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
