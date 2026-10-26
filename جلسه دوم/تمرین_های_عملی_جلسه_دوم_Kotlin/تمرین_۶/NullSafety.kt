fun main() {
    val ordinaryText: String = "سلام"
    val nullableText: String? = null
    println("طول متن معمولی: ${ordinaryText.length}")
    println("طول متن تهی: ${nullableText?.length}")
    val fallbackText = nullableText ?: "مقدار پیش‌فرض"
    println("متن نهایی: $fallbackText")
}
