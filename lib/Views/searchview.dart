
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapplication/cubits/get%20weather%20cubit/get_weather_cubit.dart';


class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Search a City'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: TextField(
              onSubmitted: (value) async{ var getWeatherCubit= BlocProvider.of<GetWeatherCubit>(context);
              getWeatherCubit.getWeather(CityName: value);
               Navigator.pop(context);
              },
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                labelText: 'Search',
                suffixIcon: const Icon(Icons.search),
                hintText: 'Enter City Name',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(color: Colors.orangeAccent)),
              ),
            ),
          ),
        ));
  }
}
