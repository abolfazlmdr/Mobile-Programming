// تمرین ۵: فهرستی از نام پنج دانشجو با استفاده از List بسازید و اعضای آن را نمایش دهید.

void main() {
  List<String> students = [
    'علی رضایی',
    'سارا احمدی',
    'رضا کریمی',
    'مریم حسینی',
    'امیر محمدی'
  ];

  print('لیست دانشجویان:');
  for (int i = 0; i < students.length; i++) {
    print('${i + 1}. ${students[i]}');
  }

  // یا با for-in
  print('\nنمایش با for-in:');
  for (String student in students) {
    print(student);
  }
}
