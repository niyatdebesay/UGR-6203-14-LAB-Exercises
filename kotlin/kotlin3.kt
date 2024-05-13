fun main() {
    println("Enter your grade: ")
    val grade = readLine()?.toIntOrNull()

    if (grade != null) {
        val letterGrade = when {
            grade >= 90 -> "A"
            grade >= 80 -> "B"
            grade >= 70 -> "C"
            grade >= 60 -> "D"
            grade < 60 -> "F"
            else -> null
        }

        if (letterGrade != null) {
            println("Your grade is: $letterGrade")
        } else {
            println("Invalid grade")
        }
    } else {
        println("Invalid input")
    }
}