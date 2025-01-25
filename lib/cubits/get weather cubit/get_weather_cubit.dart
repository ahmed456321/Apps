
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapplication/Models/weather_model.dart';
import 'package:weatherapplication/cubits/get%20weather%20cubit/get_weather_state.dart';
import 'package:weatherapplication/services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherState>  {
  GetWeatherCubit():super(InitialState());
  late WeatherModel weatherModel;
  getWeather({required String CityName})async{
    try {
             weatherModel=await
             WeatherServices(Dio()).getCurrentWeather(CityName:CityName);
emit(WeatherLoadedState(weatherModel));
}  catch (e) {
  emit(WeatherFailureState(e.toString()));
}
               
  }
}
