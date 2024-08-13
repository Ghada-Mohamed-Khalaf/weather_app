import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:weather_app/views/search_view.dart';

class GetWeatherCubit extends Cubit<WeatherState>{
  GetWeatherCubit(super.initialState);

  getWeather({required String cityName})async{
    weatherModel = await WeatherServices(Dio()).getCurrentWeather(cityName:cityName );

  }

}