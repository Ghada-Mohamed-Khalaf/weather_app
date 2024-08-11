import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices{
     final Dio dio = Dio();

     Future< WeatherModel> getCurrentWeather({required String cityName}) async{
    Response response=await dio.get('https://api.weatherapi.com/v1/forecast.json?key=68e2c2078b044de3b3672943241108&q=$cityName&days=1');
    WeatherModel weatherModel=WeatherModel.fromJson(response.data);
    return weatherModel;

     }


}