fun main() {
    print("نمره دانشجو را وارد کنید: ")
    val grade = readLine()?.toDoubleOrNull()
    if (grade == null) {
        println("ورودی معتبر نیست؛ یک عدد وارد کنید.")
    } else if (grade >= 10) {
        println("دانشجو قبول است.")
    } else {
        println("دانشجو مردود است.")
    }
}
