import 'package:medical_appointment_booking_app/screens/doctor_screen.dart';
import 'package:flutter/material.dart';

class DoctorsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorScreen()));
      },
      child: Container(
        decoration: BoxDecoration(color: Color(0xffFFEEE0), borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(
              "assets/images/img1.png",
              height: 50,
              width: 50,
              fit: BoxFit.fitWidth,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Dr. Stefeni Albert",
                    style: TextStyle(color: Color(0xffFC9535), fontSize: 19),
                  ),
                ),
                Text(
                  "Heart Speailist",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
              decoration: BoxDecoration(color: Color(0xffFBB97C), borderRadius: BorderRadius.circular(13)),
              child: Text(
                "Call",
                style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
