import 'package:medical_appointment_booking_app/data/data.dart';
import 'package:medical_appointment_booking_app/model/speciality.dart';
import 'package:flutter/material.dart';

class SpecialityProvider with ChangeNotifier {
  final List<Speciality> _specialities = [
    Speciality(imageUrl: "assets/images/img1.png", speciality: "Cough & Cold", noOfDoctors: 10, backgroundColor: Color(0xffFBB97C)),
    Speciality(imageUrl: "assets/images/img1.png", speciality: "Heart Specialist", noOfDoctors: 10, backgroundColor: Color(0xffFBB97C)),
    Speciality(imageUrl: "assets/images/img1.png", speciality: "Diabetes Care", noOfDoctors: 10, backgroundColor: Color(0xffFBB97C)),
    Speciality(imageUrl: "assets/images/img1.png", speciality: "Cough & Cold", noOfDoctors: 10, backgroundColor: Color(0xffFBB97C)),
  ];

  List<Speciality> get specialities => _specialities;
}
