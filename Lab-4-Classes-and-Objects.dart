class Product{
  String name;
  double price;
  int quantity;
  Product(this.name,this.price,this.quantity);
  double Getcost(){
    return quantity * price;
  }
}
void main(){
  Product product1 = Product("Denim Jeans", 12.30,4);
  
  print("The total cost of the ${product1.name} is  ${product1.Getcost()}");

}