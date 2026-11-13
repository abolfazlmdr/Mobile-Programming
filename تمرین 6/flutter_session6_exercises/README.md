# تمرین‌های عملی جلسه ششم - برنامه‌نویسی موبایل ۱
## موضوع: مدیریت صفحات، مسیریابی و طراحی فرم در Flutter

**مدرس: سید سعید محمدی**

---

## لیست فایل‌ها

| فایل | توضیح |
|------|--------|
| `exercise1_two_pages.dart` | اپلیکیشن دوصفحه‌ای + نمایش نام دانشجو |
| `exercise2_login_form.dart` | فرم ورود با اعتبارسنجی (نام کاربری + رمز ۸ کاراکتری) |
| `exercise3_student_form.dart` | فرم کامل ثبت اطلاعات دانشجو با اعتبارسنجی |
| `exercise4_pass_data.dart` | ارسال نام و سن به صفحه پروفایل |
| `exercise5_exit_dialog.dart` | Dialog تأیید خروج |
| `exercise6_student_management.dart` | اپلیکیشن سه‌صفحه‌ای مدیریت دانشجو |
| `project_student_registration.dart` | **پروژه نهایی:** صفحه اصلی + ورود + ثبت‌نام + درباره |

---

## نحوه اجرا

هر فایل را به عنوان `lib/main.dart` در یک پروژه Flutter کپی کنید:

```bash
flutter create session6_app
cd session6_app
# محتوای یکی از فایل‌ها را در lib/main.dart قرار دهید
flutter run
```

---

## نکات مهم جلسه

- `Navigator.push` → باز کردن صفحه جدید
- `Navigator.pop` → بازگشت به صفحه قبلی
- `Navigator.pushReplacement` → جایگزین کردن صفحه فعلی
- `GlobalKey<FormState>` + `validate()` → اعتبارسنجی فرم
- `TextFormField` + `validator` → فیلد با اعتبارسنجی
- `showDialog` + `AlertDialog` → پنجره تأیید
- `TextEditingController` را حتماً در `dispose` آزاد کنید
