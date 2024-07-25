import 'package:flutter/material.dart';
import 'package:practice_gridview/constant/constant.dart';
import 'package:practice_gridview/data/doctor_data.dart';
import 'package:practice_gridview/page/ambulance_page.dart';
import 'package:practice_gridview/page/covid_page.dart';
import 'package:practice_gridview/page/hospital_info.dart';
import 'package:practice_gridview/page/medicine_page.dart';
import 'package:practice_gridview/page/hospital2nd_page.dart';
import 'package:practice_gridview/page/patient_details.dart';

import 'doctor2nd_page.dart';
class homePage extends StatelessWidget {
  const homePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                /// app bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Container(
                      child: Row(
                        children: [
                          RichText(
                              text: TextSpan(style: myStyle(20, primaryColor, FontWeight.bold),
                                children: [
                                  TextSpan(text: 'Doc',
                                  ),
                                  TextSpan(
                                    text: 'Time', style: myStyle(20, secondaryColor, FontWeight.bold),
                                  ),
                                  TextSpan(text: '+',
                                  )
                                ],
                              )
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>PatientDetails()));
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: primaryColor),
                          image: DecorationImage(
                              image: AssetImage('assets/image/doctor5.png'),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.44,
                      decoration: BoxDecoration(
                        border: Border.all(color: primaryColor),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                        ),
                        image: DecorationImage(
                            image: AssetImage('assets/image/doctors.jpg'),
                            fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Stay Healthy',style: myStyle(20, Colors.black, FontWeight.bold),
                          ),
                          Text('Stay Safe',style: myStyle (18, Colors.black, FontWeight.bold),
                          ),
                          Text('A person skilled or specializing in healing arts. especially : one (as a physician, dentist, or veterinarian', style: TextStyle(fontSize: 15),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.video_call,
                                size: 30,
                                color: primaryColor,
                              ),
                              Text(' Meet Online',style: myStyle(17, secondaryColor, FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Services',
                        style: myStyle(25, primaryColor, FontWeight.bold),
                    ),
                    Text('See all')
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>CovidHomePage()));
                      },
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/icon/virus.gif")),
                          Text('Covid-19'),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (builder)=>HospitalDetails()));
                      },
                      child: Column(
                        children: [
                          Image(
                              image: AssetImage("assets/icon/hospital.gif"),
                          ),
                          Text('Hospital'),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                        MaterialPageRoute(builder: (builder)=>ambulance_page()));
                      },
                      child: Column(
                        children: [
                          Image(
                              image: AssetImage("assets/icon/ambulance.gif"),
                          ),
                          Text('Ambulance'),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>MedicinePage()));
                      },
                      child: Column(
                        children: [
                          Image(
                              image: AssetImage("assets/icon/medicine.gif"),
                          ),
                          Text('Medicine'),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Top Rated Doctor',
                        style: myStyle(25, primaryColor, FontWeight.bold),
                    ),
                    Text('See all')
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: allDoc.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (builder)=>DoctorsDetails(doctorModel: allDoc[index],)),
                        );
                      },
                      child: Card(
                        elevation: 4,
                        child: Container(
                          child: Column(
                            children: [
                              CircleAvatar(
                                maxRadius: 50,
                                backgroundImage:
                                AssetImage("${allDoc[index].imgUrl}"),
                              ),
                              Text("${allDoc[index].name}", style: myStyle(22, Colors.black, FontWeight.bold), textAlign: TextAlign.center,),
                              Text("${allDoc[index].speciality}", style: myStyle(16, Colors.black,FontWeight.bold), textAlign: TextAlign.center,),
                              // SizedBox(
                              //   height: 10,
                              // ),
                              Spacer(),
                              Container(
                                height: 40,
                                width: 75,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.lightBlueAccent,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.star, size: 20, color: Colors.yellow,),
                                    Text("${allDoc[index].rating}"),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
