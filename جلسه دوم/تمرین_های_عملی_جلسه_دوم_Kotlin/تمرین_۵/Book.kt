class Book(
    val title: String,
    val author: String
)
fun main() {
    val book = Book("کلیات برنامه‌نویسی", "سید سعید محمدی")
    println("عنوان کتاب: ${book.title}")
    println("نویسنده: ${book.author}")
}
