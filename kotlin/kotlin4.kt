fun main() {
    val originalPrice = 100.0
    val discountPercentage = 0.6  
    val discountThreshold = 0.5  

    var finalPrice: Double

    if (discountPercentage > discountThreshold) {
        println("Discount is too high. Setting discount to $discountThreshold.")
        finalPrice = originalPrice * (1 - discountThreshold)
    } else {
        finalPrice = originalPrice * (1 - discountPercentage)
    }

    println("Original Price: $originalPrice")
    println("Discount Percentage: ${discountPercentage * 100}%")
    println("Final Price: $finalPrice")
}