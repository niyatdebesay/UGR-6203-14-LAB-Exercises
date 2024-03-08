class Person{
  String name;
  int age;
  String address;
  Person(this.name, this.age, this.address);

}
void main(){
   Person person = Person("Niyat", 20, "Addis Ababa");
   person.name = "Helen";
   print(person.name);
}