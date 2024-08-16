import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';


class GetWeatherCubit extends Cubit<WeatherState>{
  GetWeatherCubit():super(NoWeatherState());

  getWeather({required String cityName})async{
    try {
      WeatherModel weatherModel= await WeatherServices(Dio()).getCurrentWeather(cityName:cityName );
      emit(WeatherLoadedState());
    } on Exception catch (e) {
      emit(WeatherFailureState());
      // TODO
    }



  }

}