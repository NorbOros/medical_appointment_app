import 'package:flutter/cupertino.dart';
import 'package:medical_appointment_booking_app/model/speciality.dart';

List<Speciality> getSpeciality() {
  return [
    Speciality(imageUrl: "assets/images/img1.png", speciality: "Cough & Cold", noOfDoctors: 10, backgroundColor: Color(0xffFBB97C)),
    Speciality(imageUrl: "assets/images/img1.png", speciality: "Heart Specialist", noOfDoctors: 10, backgroundColor: Color(0xffFBB97C)),
    Speciality(imageUrl: "assets/images/img1.png", speciality: "Diabetes Care", noOfDoctors: 10, backgroundColor: Color(0xffFBB97C)),
    Speciality(imageUrl: "assets/images/img1.png", speciality: "Cough & Cold", noOfDoctors: 10, backgroundColor: Color(0xffFBB97C)),
  ];
}
