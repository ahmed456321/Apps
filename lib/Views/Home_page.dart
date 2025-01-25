import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapplication/Views/no_views.dart';
import 'package:weatherapplication/Views/searchview.dart';
import 'package:weatherapplication/cubits/get%20weather%20cubit/get_weather_cubit.dart';
import 'package:weatherapplication/cubits/get%20weather%20cubit/get_weather_state.dart';


import 'Weather InfoBody.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WeatherApp'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const SearchView();
                  },
                ),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: 
        BlocBuilder<GetWeatherCubit,WeatherState>
        (builder: (context, state){
          if (state is InitialState) {return const NoViews();
            
          }else if(state is WeatherLoadedState){
           return const WeatherInfo();
          }else{return const Text('opps with an error');}
          
        }
        
        )
      
      );
  }
}
