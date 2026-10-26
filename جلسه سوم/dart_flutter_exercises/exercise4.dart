// تمرین ۴: تابعی به نام multiply تعریف کنید که دو عدد دریافت کند و حاصل‌ضرب آن‌ها را برگرداند.

int multiply(int a, int b) {
  return a * b;
}

void main() {
  int result = multiply(6, 7);
  print('حاصل‌ضرب ۶ و ۷ برابر است با: $result');

  // مثال دیگر
  print('حاصل‌ضرب ۵ و ۴ برابر است با: ${multiply(5, 4)}');
}
