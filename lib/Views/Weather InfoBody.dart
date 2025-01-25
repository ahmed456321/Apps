import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapplication/cubits/get%20weather%20cubit/get_weather_cubit.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            weatherModel.getImage(),
          ),
          
          Text(
            '${weatherModel.temp}°',
            style: const TextStyle(
              fontSize: 70,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Max: ${weatherModel.maxtemp}°',
                  style: const TextStyle(fontSize: 28),
                ),
                const SizedBox(width: 25),
                Text(
                  'Min: ${weatherModel.mintemp}°',
                  style: const TextStyle(fontSize: 28),
                ),  ],
            ),),Text(
            weatherModel.weathercondition,
            style: const TextStyle(
              fontSize: 30,
            ),
          ),Text(
            weatherModel.date,
            style: const TextStyle(
              fontSize: 30,
            ),
          
            
          ),
          
        ],
      ),
    );
  }
}
