void main() {
  Map<String, int> shoppingCart = {};

  addToCart(shoppingCart, 'Apple', 2);
  addToCart(shoppingCart, 'Banana', 3);
  addToCart(shoppingCart, 'Orange', 1);

  print('Shopping Cart:');
  printCart(shoppingCart);

  double totalPrice = calculateTotalPrice(shoppingCart);
  print('Total Price: \$$totalPrice');

  removeFromCart(shoppingCart, 'Banana');

  print('Shopping Cart after removal:');
  printCart(shoppingCart);

  totalPrice = calculateTotalPrice(shoppingCart);
  print('Total Price after removal: \$$totalPrice');
}

void addToCart(Map<String, int> cart, String itemName, int quantity) {
  cart[itemName] = (cart[itemName] ?? 0) + quantity;
}

void removeFromCart(Map<String, int> cart, String itemName) {
  cart.remove(itemName);
}

double calculateTotalPrice(Map<String, int> cart) {
  double totalPrice = 0.0;

  cart.forEach((itemName, quantity) {
    double itemPrice = getItemPrice(itemName);
    totalPrice += itemPrice * quantity;
  });

  return totalPrice;
}

double getItemPrice(String itemName) {
  Map<String, double> itemPrices = {
    'Apple': 0.5,
    'Banana': 0.3,
    'Orange': 0.4,
  };

  return itemPrices[itemName] ?? 0.0;
}

void printCart(Map<String, int> cart) {
  cart.forEach((itemName, quantity) {
    print('$itemName: $quantity');
  });
}