import 'package:medical_appointment_booking_app/model/speciality.dart';
import 'package:flutter/material.dart';

class SpecialistTile extends StatelessWidget {
  final Speciality _speciality;

  SpecialistTile({required final Speciality speciality}) : _speciality = speciality;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(color: _speciality.backgroundColor, borderRadius: BorderRadius.circular(24)),
      padding: EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _speciality.speciality,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                _speciality.noOfDoctors.toString() + " Doctors",
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            ],
          ),
          Image.asset(
            _speciality.imageUrl,
            height: 140,
          )
        ],
      ),
    );
  }
}
