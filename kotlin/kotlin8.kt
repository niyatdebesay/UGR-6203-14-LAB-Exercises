fun generateRandomPassword(length: Int): String {
    val characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_=+[{]};:',<.>/?"
    val passwordBuilder = StringBuilder()

    repeat(length) {
        val randomIndex = (0 until characters.length).random()
        val randomChar = characters[randomIndex]
        passwordBuilder.append(randomChar)
    }

    return passwordBuilder.toString()
}

fun main() {
    println("Enter the length of the password:")
    val passwordLength = readLine()?.toIntOrNull() ?: 8

    val generatedPassword = generateRandomPassword(passwordLength)

    println("Generated Password: $generatedPassword")
}