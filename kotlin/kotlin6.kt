fun findMax(numbers: List<Int>): Int? {
    if (numbers.isEmpty()) {
        return null
    }
    var max = numbers[0]
    for (number in numbers) {
        if (number > max) {
            max = number
        }
    }
    return max
}
fun filterEvenNumbers(numbers: List<Int>): List<Int> {
    return numbers.filter { it % 2 == 0 }
}
fun calculateAverage(numbers: List<Double>): Double? {
    if (numbers.isEmpty()) {
        return null
    }
    val sum = numbers.sum()
    return sum / numbers.size
}
fun main() {
    val numbers = listOf(5, 8, 12, 3, 10, 6, 7)

    val max = findMax(numbers)
    if (max != null) {
        println("Maximum value: $max")
    } else {
        println("The list is empty.")
    }

    val evenNumbers = filterEvenNumbers(numbers)
    println("Even numbers: $evenNumbers")

    val doubleNumbers = listOf(2.5, 3.7, 1.8, 4.2)
    val average = calculateAverage(doubleNumbers)
    if (average != null) {
        println("Average: $average")
    } else {
        println("The list is empty.")
    }
}
