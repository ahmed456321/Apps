
import 'package:weatherapplication/Models/weather_model.dart';

class WeatherState {
  
}
class InitialState extends WeatherState {}
class WeatherLoadedState extends WeatherState {
    final WeatherModel weatherModel;
    WeatherLoadedState(this.weatherModel);
}
class WeatherFailureState extends WeatherState {
  WeatherFailureState(String string);
}