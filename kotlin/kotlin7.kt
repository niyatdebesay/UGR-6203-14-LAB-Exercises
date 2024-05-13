fun findMinMaxCharacters(word: String): Pair<Char?, Char?> {
    if (word.isEmpty()) {
        return Pair(null, null)
    }

    val letters = mutableListOf<Char>()
    for (i in word.toCharArray()) {
        val c = i.toInt().toChar()
        letters.add(c)
    }

    var minChar = letters[0]
    var maxChar = letters[0]

    for (letter in letters) {
        if (letter < minChar) {
            minChar = letter
        }
        if (letter > maxChar) {
            maxChar = letter
        }
    }

    return Pair(minChar, maxChar)
}

fun main() {
    println("Enter a string:")
    val input = readLine() ?: ""

    val (minChar, maxChar) = findMinMaxCharacters(input)

    println("Minimum character: $minChar")
    println("Maximum character: $maxChar")
}