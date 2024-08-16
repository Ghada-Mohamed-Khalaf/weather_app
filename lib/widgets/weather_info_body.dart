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
          Text("update at ${weatherModel.date}:${weatherModel.date}",style: TextStyle(fontSize: 24),),SizedBox(height: 32,),
          Row(
            children: [Image.network("https:${weatherModel.image}",height: 90,width: 90,),
            Text(
              "${weatherModel.temp.round()}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
      ],
          ),
      Column(
          children: [
      Text(
      'Max Temp: ${weatherModel.maxTemp.round()}',
      style: const TextStyle(
        fontSize: 16,
      ),
    ),
    Text(
    'Min Temp: ${weatherModel.minTemp.round()}',
    style: const TextStyle(
    fontSize: 16,
    ),


    ),

       ],

    ),
      ],
      ),
    );
  }
}
