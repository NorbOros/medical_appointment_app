import 'package:flutter/cupertino.dart';

class Speciality {
  String _imageUrl;
  String _speciality;
  int _noOfDoctors;
  Color _backgroundColor;

  Speciality({required String imageUrl, required String speciality, required int noOfDoctors, required Color backgroundColor}) : 
  _imageUrl = imageUrl,
  _speciality = speciality,
  _noOfDoctors = noOfDoctors,
  _backgroundColor = backgroundColor;


String get imageUrl => _imageUrl; 
String get speciality => _speciality; 
int get noOfDoctors => _noOfDoctors; 
Color get backgroundColor => _backgroundColor; 
  
}
