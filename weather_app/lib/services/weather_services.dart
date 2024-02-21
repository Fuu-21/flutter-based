import '../models/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherServices{
  static const BASE_URL ='http://api.openweathermap.org/data/2.5.weather';
  final String apiKey;

  WeatherServices(this.apiKey);
  Future<Weather> getWeather(String cityName) async {
      final response = await http.get(Uri.parse(uri))
  }
}