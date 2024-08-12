import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices{
     final Dio dio ;
     final String apiKey= "68e2c2078b044de3b3672943241108";
      final String baseUrl='https://api.weatherapi.com';

     WeatherServices(this.dio);

     Future< WeatherModel> getCurrentWeather({required String cityName}) async{
    Response response=await dio.get('$baseUrl/v1/forecast.json?key=$apiKey&q=$cityName&days=1');
    WeatherModel weatherModel=WeatherModel.fromJson(response.data);
    return weatherModel;

     }


}