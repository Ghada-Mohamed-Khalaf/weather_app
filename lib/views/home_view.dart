import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Weather App"),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder:(context){
              return const SearchView();
            },),);
          },icon: const Icon(Icons.search),)

        ],

      ),
      body:BlocBuilder<GetWeatherCubit,WeatherState>(
        builder: (context,state)
        {
        if( state is NoWeatherState){
          return NoWeatherBody();
        }
        else if(state is WeatherLoadedState)
        {
       return WeatherInfoBody();
        }
        else{
          return Text("opps there was  an error ");
        }
        },

      ),



    );
  }
}
