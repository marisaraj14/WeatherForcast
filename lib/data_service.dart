import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DataService{
  void getWeather(String city) async{
    //https://api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
    final queryParameters = {'q':city, 'appid':'e26debfb965176f48980397df03f9315'};

//Base URL, Path name, Query Parameters
    final uri = Uri.https('api.openweathermap.org', '/data/2.5/weather', queryParameters);

    final response= await http.get(uri);

    print(response.body);
  }
}