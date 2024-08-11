import 'package:weather_app/models/weather_model.dart';

class WeatherServices{
     final Dio dio = Dio();

     WeatherModel getCurrentWeather(){
          Dio().get(path)

     }


}