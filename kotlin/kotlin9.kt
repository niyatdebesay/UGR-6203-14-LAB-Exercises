fun transformToUppercase(strings: List<String>): List<String> {
    return strings.map { it.toUpperCase() }
}

fun filterGreaterThan(numbers: List<Int>, value: Int): List<Int> {
    return numbers.filter { it > value }
}

fun calculateSum(numbers: List<Int>): Int {
    return numbers.reduce { acc, number -> acc + number }
}

fun main() {
    val strings = listOf("apple", "banana", "cherry")
    val transformedStrings = transformToUppercase(strings)
    println(transformedStrings)

    val numbers = listOf(10, 20, 30, 40, 50)
    val filteredNumbers = filterGreaterThan(numbers, 25)
    println(filteredNumbers)

    val numbers2 = listOf(1, 2, 3, 4, 5)
    val sum = calculateSum(numbers2)
    println(sum)
}