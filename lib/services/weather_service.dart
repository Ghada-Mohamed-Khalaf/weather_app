import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices{
     final Dio dio ;
      final String domain='https://api.weatherapi.com';
     WeatherServices(this.dio);

     Future< WeatherModel> getCurrentWeather({required String cityName}) async{
    Response response=await dio.get('$domain/v1/forecast.json?key=68e2c2078b044de3b3672943241108&q=$cityName&days=1');
    WeatherModel weatherModel=WeatherModel.fromJson(response.data);
    return weatherModel;

     }


}