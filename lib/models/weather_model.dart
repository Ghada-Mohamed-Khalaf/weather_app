class WeatherModel {
  final String cityName;
  final String date;
  final String? image;
  final String maxTemp;
  final String minTemp;
  final String temp;
  final String weatherCondition;

  WeatherModel(
      {required this.cityName,
      required this.date,
      required this.image,
      required this.maxTemp,
      required this.minTemp,
      required this.temp,
      required this.weatherCondition});

  factory WeatherModel.fromJson(json){
    return  WeatherModel(cityName: cityName, date: date, image: image, maxTemp: maxTemp, minTemp: minTemp, temp: temp, weatherCondition: weatherCondition) 
  }

}
