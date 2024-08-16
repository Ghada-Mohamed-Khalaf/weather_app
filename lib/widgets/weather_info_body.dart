import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/views/search_view.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key,required this.weatherModel});
    final WeatherModel  weatherModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.0),
      child:  Column(
        children: [
          Text(weatherModel.cityName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),

          

       ],
      ),
    );
  }
}
