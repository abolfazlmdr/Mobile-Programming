// تمرین ۷: کلاس Book را با دو ویژگی عنوان و نام نویسنده تعریف کنید و یک شیء از آن بسازید.

class Book {
  String title;
  String author;

  Book(this.title, this.author);

  void displayInfo() {
    print('عنوان کتاب: $title');
    print('نویسنده: $author');
  }
}

void main() {
  Book book1 = Book('برنامه‌نویسی موبایل با Flutter', 'سید سعید محمدی');
  book1.displayInfo();

  // مثال دیگر
  Book book2 = Book('آشنایی با زبان Dart', 'گوگل');
  print('\nکتاب دوم:');
  book2.displayInfo();
}
