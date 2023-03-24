import 'dart:html';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima_day_7/services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:clima_day_7/screens/location_screen.dart';
import 'package:clima_day_7/services/networking.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima_day_7/services/weather.dart';
    //'39770224035f210673c5f92ecbc80acc';
class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

 void initState(){
   super.initState();
   getLocationData();
 }
 void diactivate(){

 }
 void getLocationData()async{
   WeatherModel weatherModel=WeatherModel();
   var weatherData=await weatherModel.getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context){return LocationScreen(locationWeather: weatherData,);}));

 }
 Future<void> getData()async{

     /*print(response.body);
     print(response.statusCode);*/
 }



  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100,
        )
      ),
    );
  }
}
