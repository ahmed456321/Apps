import 'dart:developer';

import 'package:dio/dio.dart';

import 'package:weatherapplication/Models/weather_model.dart';

class WeatherServices {
  final Dio dio;
final String baseUrl ='https://api.weatherapi.com/v1';
final String apikey ='ce80d2c95bd14474a9362558230208';
  WeatherServices(this.dio);
Future<WeatherModel>getCurrentWeather({required String CityName, })async{
try {
  Response response =await dio.get('$baseUrl/forecast.json?key=$apikey&q=$CityName&aqi=no');


WeatherModel weatherModel = WeatherModel.fromJson(response.data);return weatherModel;
} on DioException catch (e) {
  final String errMessage = e.response?.data['error']['message']?? 'oops there was an error , try later';

  throw Exception(errMessage);}catch (e){log(e.toString());
  throw Exception('oops there was an error , try later');}
}

}
