import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
  final Dio dio;

  final String apiKey = "68e2c2078b044de3b3672943241108";
  final String baseUrl = 'https://api.weatherapi.com';

  WeatherServices(this.dio);

  Future<WeatherModel?> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
          '$baseUrl/v1/forecast.json?key=$apiKey&q=$cityName&days=1');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    }
    on  DioException catch(e){

    final String errorMessage = e.response?.data['error']['message'] ?? 'oops there was an error,try again';
   throw Exception(errorMessage);
  }
}
      }




