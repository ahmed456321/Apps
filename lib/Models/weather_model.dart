
class WeatherModel {
  final String date;
  final String CityName;
  final String? image;
  final double temp;
  final double maxtemp;
  final double mintemp;
  final String weathercondition;

  WeatherModel({required this.date,required this.CityName, this.image,required this.temp,required this.maxtemp,required this.mintemp,required this.weathercondition});
factory WeatherModel.fromJson(json){

  return WeatherModel(
    image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
    date:json['current']['last_updated']
    , CityName: json['location']['name'],
     temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'], 
    maxtemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'], 
    mintemp:  json['forecast']['forecastday'][0]['day']['mintemp_c'],
     weathercondition:  json['forecast']['forecastday'][0]['day']['condition']['text']);
} String getImage() {
    if (weathercondition == 'Sunny' ||weathercondition == 'Clear' ||  weathercondition == 'partly cloudy') {
      return 'assets/images/clear.jpg';
    } else if (
        
        weathercondition == 'Blizzard' ||  weathercondition == 'Patchy snow possible'  ||  weathercondition == 'Patchy sleet possible' || weathercondition == 'Patchy freezing drizzle possible' || weathercondition == 'Blowing snow') {
      return 'assets/images/snow.png';
    } else if (weathercondition == 'Freezing fog' || weathercondition == 'Fog' ||  weathercondition == 'Heavy Cloud' || weathercondition == 'Mist' || weathercondition == 'Fog') {
      return 'assets/images/cloudy.png';
    } else if (weathercondition == 'Patchy rain possible' ||
        weathercondition == 'Heavy Rain' ||
        weathercondition == 'Showers	') {
      return 'assets/images/rainy.png';
    } else if (weathercondition == 'Thundery outbreaks possible' || weathercondition == 'Moderate or heavy snow with thunder' || weathercondition == 'Patchy light snow with thunder'|| weathercondition == 'Moderate or heavy rain with thunder' || weathercondition == 'Patchy light rain with thunder' ) {
      return 'assets/images/thunderstorm.png';
    } else {
      return 'assets/images/clear.jpg';
    }
  }

}
