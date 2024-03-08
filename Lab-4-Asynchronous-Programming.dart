import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchWeatherData() async {
  String apiKey = 'your_api_key';
  String city = 'New York'; // Replace with the desired city

  String apiUrl =
      'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey';

  var response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to fetch weather data');
  }
}

void main() async {
  try {
    print('Fetching weather data...');

    Map<String, dynamic> weatherData = await fetchWeatherData();

    String cityName = weatherData['name'];
    double temperature = weatherData['main']['temp'] - 273.15;
    String weatherDescription = weatherData['weather'][0]['description'];

    print('Weather in $cityName:');
    print('Temperature: ${temperature.toStringAsFixed(2)}°C');
    print('Weather Condition: $weatherDescription');
  } catch (e) {
    print('Error occurred while fetching weather data: $e');
  }
}