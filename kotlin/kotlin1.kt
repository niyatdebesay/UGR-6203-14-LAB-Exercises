fun main() {
    println("Enter the first number:")
    val num1 = readLine()?.toDoubleOrNull()

    println("Enter the second number:")
    val num2 = readLine()?.toDoubleOrNull()

    println("Enter the operation (+, -, *, /):")
    val operation = readLine()

    if (num1 != null && num2 != null && operation != null) {
        val result = when (operation) {
            "+" -> num1 + num2
            "-" -> num1 - num2
            "*" -> num1 * num2
            "/" -> num1 / num2
            else -> {
                println("Invalid operation")
                return
            }
        }
        println("Result: $result")
    } else {
        println("Invalid input")
    }
}