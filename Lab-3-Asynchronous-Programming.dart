import 'dart:async';

Future<List<String>> loadDataFromDatabase() async {
  // Simulating a delay for loading data from the database.
  await Future.delayed(Duration(seconds: 2));

  // Simulated loaded data.
  List<String> data = ['Niyat', 'Meklit', 'Mahlet', 'Lidya'];

  return data;
}

void main() async {
  print('Loading data...');
  
  List<String> loadedData = await loadDataFromDatabase();

  print('Data loaded:');
  for (String item in loadedData) {
    print(item);
  }
}