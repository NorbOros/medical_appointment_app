import 'package:medical_appointment_booking_app/provider/category_provider.dart';
import 'package:medical_appointment_booking_app/provider/speciality_provider.dart';
import 'package:flutter/material.dart';
import 'package:medical_appointment_booking_app/screens/error_screen.dart';
import 'package:medical_appointment_booking_app/screens/home_screen.dart';
import 'package:medical_appointment_booking_app/utils/theme_data_light.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CategoryProvider()),
        ChangeNotifierProvider(create: (_) => SpecialityProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Banking App',
        theme: ThemeDataLight.getThemeData(),
        home: HomeScreen(),
        onGenerateRoute: (settings) {
          return MaterialPageRoute(builder: (ctx) => const ErrorScreen());
        },
        onUnknownRoute: (settings) {
          return MaterialPageRoute(builder: (ctx) => const ErrorScreen());
        },
      ),
    );
  }
}
