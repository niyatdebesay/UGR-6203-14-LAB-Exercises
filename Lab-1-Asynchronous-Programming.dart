import 'dart:async';
import 'dart:math';

Future<String> fetchRandomQuote() async {
  // Simulating a network delay using the `Future.delayed` function.
  await Future.delayed(Duration(seconds: 2));
  
  // Generating a random quote.
  List<String> quotes = [
    "The future belongs to those who believe in the beauty of their dreams. - Eleanor Roosevelt",
    "The only way to do great work is to love what you do. - Steve Jobs",
    "Success is not the key to happiness. Happiness is the key to success. - Albert Schweitzer"
  ];

  Random random = Random();
  int index = random.nextInt(quotes.length);
  return quotes[index];
}

void main() async {
  String quote = await fetchRandomQuote();
  print("Random Quote: $quote");
}