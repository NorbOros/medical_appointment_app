import 'package:medical_appointment_booking_app/components/activity_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black87),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFBB97C),
                      ),
                      padding: EdgeInsets.only(top: 8, left: 8, right: 8),
                      child: Image.asset("assets/images/doctor_1.png", height: 200)),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 222,
                    height: 220,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Dr. Stefeni Albert",
                          style: TextStyle(fontSize: 32, color: Colors.black),
                        ),
                        Text(
                          "Heart Spealist",
                          style: TextStyle(fontSize: 19, color: Colors.grey),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, bottom: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xffFBB97C),
                                ),
                                height: 45,
                                width: 55,
                                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                                child: Image.asset(
                                  'assets/icons/email.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xffFBB97C),
                                ),
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                  'assets/icons/email.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xffFBB97C),
                                ),
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                  'assets/icons/email.png',
                                  fit: BoxFit.contain,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                "About",
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 24.0),
                child: Text(
                  "Dr. Stefeni Albert is a cardiologist in Nashville & affiliated with multiple hospitals in the  area.He received his medical degree from Duke University School of Medicine and has been in practice for more than 20 years. ",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Icon(Icons.map_outlined),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Address",
                                style: TextStyle(color: Colors.black87.withOpacity(0.7), fontSize: 20),
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width - 268,
                                  child: Text(
                                    "House # 2, Road # 5, Green Road Dhanmondi, Dhaka, Bangladesh",
                                    style: TextStyle(color: Colors.grey),
                                  ))
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Icon(Icons.alarm_on_outlined),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Daily Practict",
                                  style: TextStyle(color: Colors.black87.withOpacity(0.7), fontSize: 20),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width - 268,
                                    child: Text(
                                      '''Monday - Friday Open till 7 Pm''',
                                      style: TextStyle(color: Colors.grey),
                                    ))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/map.png",
                      width: 130,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Activity",
                  style: TextStyle(color: Color(0xff242424), fontSize: 28, fontWeight: FontWeight.w600),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ActivityTile(icon: Icons.list_alt_outlined, activity: 'List Of Schedule', color: Color(0xffFBB97C)),
                  ActivityTile(icon: Icons.list_outlined, activity: 'Doctor\'s Daily Post', color: Color(0xffA5A5A5)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
