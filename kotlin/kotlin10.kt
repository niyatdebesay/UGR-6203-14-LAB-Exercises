class BankAccount(
    val accountNumber: String,
    var balance: Double
) {
    fun deposit(amount: Double) {
        balance += amount
        println("Deposit of $amount successful. New balance: $balance")
    }

    fun withdraw(amount: Double) {
        if (balance >= amount) {
            balance -= amount
            println("Withdrawal of $amount successful. New balance: $balance")
        } else {
            println("Insufficient funds. Unable to withdraw $amount. Current balance: $balance")
        }
    }

    fun printBalance() {
        println("Current balance: $balance")
    }
}

fun main() {
    val account = BankAccount("123456789", 1000.0)

    account.deposit(500.0)
    account.printBalance()

    account.withdraw(200.0)
    account.printBalance()

    account.withdraw(2000.0)
    account.printBalance()
}