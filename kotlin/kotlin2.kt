fun main() {
    var distance: Int = 10
    var unit: String = "kilometer"

    fun convertor(): Pair<Int, String> {
        when (unit) {
            "kilometer" -> {
                distance *= 1000
                unit = "meter"
            }
            "meter" -> {
                distance /= 1000
                unit = "kilometer"
            }
            else -> {
                println("Invalid unit")
                return Pair(distance, unit)
            }
        }
        return Pair(distance, unit)
    }

    val convertedValues = convertor()
    println("Converted distance: ${convertedValues.first} ${convertedValues.second}")
}