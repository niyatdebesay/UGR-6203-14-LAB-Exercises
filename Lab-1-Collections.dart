void main() {
  List<String> favoriteHobbies = [];

  print('Favorite Hobbies: $favoriteHobbies');
  print('List is empty: ${favoriteHobbies.isEmpty}');

  favoriteHobbies.add('Reading');
  favoriteHobbies.add('Gardening');
  favoriteHobbies.add('Painting');
  favoriteHobbies.add('Hiking');

  print('Favorite Hobbies: $favoriteHobbies');
  print('List is empty: ${favoriteHobbies.isEmpty}');

  favoriteHobbies.remove('Painting');

  print('Favorite Hobbies: $favoriteHobbies');

  favoriteHobbies.sort();

  print('Favorite Hobbies (sorted): $favoriteHobbies');
}