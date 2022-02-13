import 'package:medical_appointment_booking_app/model/speciality.dart';
import 'package:medical_appointment_booking_app/provider/category_provider.dart';
import 'package:medical_appointment_booking_app/provider/speciality_provider.dart';
import 'package:medical_appointment_booking_app/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medical_appointment_booking_app/components/category_tile.dart';
import 'package:medical_appointment_booking_app/components/doctors_tile.dart';
import 'package:medical_appointment_booking_app/components/special_list_tile.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<String> categories = ["Adult", "Children", "Female", "Male"];

  @override
  Widget build(BuildContext context) {
    final SpecialityProvider _specialityProvider = Provider.of<SpecialityProvider>(context);

    final List<Speciality> _specialities = _specialityProvider.specialities;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Text(
                  "Find Your \nConsultation",
                  style: TextStyle(color: Colors.black87.withOpacity(0.8), fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                height: 50,
                decoration: BoxDecoration(color: Color(0xffEFEFEF), borderRadius: BorderRadius.circular(14)),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(Icons.search),
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey, fontSize: 19),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
                child: Text(
                  "Categories",
                  style: TextStyle(color: Colors.black87.withOpacity(0.8), fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                height: 35,
                child: Consumer<CategoryProvider>(
                  builder: (_, _categoryProvider, child) => ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: categories.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) => CategoryTile(category: _categoryProvider.categoryList[index]),
                      separatorBuilder: (context, index) => VerticalDivider(
                            color: ColorConstants.transparent,
                            width: 20,
                            thickness: 0,
                          )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 250,
                  child: ListView.builder(
                      itemCount: _specialities.length,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => SpecialistTile(
                            speciality: _specialities[index],
                          )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  "Doctos",
                  style: TextStyle(color: Colors.black87.withOpacity(0.8), fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 4,
                itemBuilder: ((context, index) => DoctorsTile()),
                separatorBuilder: (context, index) => Divider(
                  height: 15.0,
                  color: Colors.transparent,
                  thickness: 0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
