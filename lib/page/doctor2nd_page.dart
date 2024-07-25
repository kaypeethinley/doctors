import 'package:flutter/material.dart';
import 'package:practice_gridview/constant/constant.dart';
import 'package:practice_gridview/model/doctor_model.dart';
class DoctorsDetails extends StatelessWidget {
  DoctorModel doctorModel;
  DoctorsDetails({super.key, required this.doctorModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(style: myStyle(26,primaryColor,FontWeight.bold),
              children: [
                TextSpan(
                  text: "Doc",
                ),
                TextSpan(text: "Time",style: myStyle(26,secondaryColor,FontWeight.bold)
                ),
                TextSpan(text: "+", style: myStyle(26,primaryColor,FontWeight.bold),
                ),
              ]
          ),
        ),
        centerTitle: true,
        actions: [Icon(Icons.more_vert_outlined)],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.green,
          width: double.infinity,
          child: Column(
            children: [
              Image(image: AssetImage("${doctorModel.imgUrl}")),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("${doctorModel.name}",style: myStyle(20,Colors.black,FontWeight.bold),),
                              SizedBox(height: 20),
                              Text("${doctorModel.speciality}",style: myStyle(18,Colors.black),),
                            ],
                          ),
                          Text("\$ ${doctorModel.payment}",style: myStyle(18,secondaryColor,FontWeight.bold),)
                        ],
                      ),
                      SizedBox(height: 20),
                      Text("About Doctor",style: myStyle(20,primaryColor,FontWeight.bold),),
                      Text("${doctorModel.aboutDoc}",style: myStyle(16,Colors.black),),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            elevation: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Patients"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.person,size: 22,color: primaryColor,),
                                      Text("${doctorModel.patient}",style: myStyle(18,primaryColor,FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("experince"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.shopping_bag,size: 22,color: primaryColor,),
                                      Text("${doctorModel.experience}",style: myStyle(18,primaryColor,FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("rating"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("${doctorModel.rating}",style: myStyle(18,primaryColor,FontWeight.bold),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("Available Time",style: myStyle(20,primaryColor,FontWeight.bold),),
                      SizedBox(
                        height: 95,
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: doctorModel.appointmentDays.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index){
                              return Card(
                                elevation: 4,
                                child: Container(
                                  height: 40,
                                  width: MediaQuery.of(context).size.width*0.27,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("${doctorModel.appointmentDays[index]}",style: myStyle(16,primaryColor,FontWeight.bold),),
                                        Text("${doctorModel.appointmentTime[index]}",style: myStyle(14,primaryColor,FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: MaterialButton(
                          color: primaryColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          height: MediaQuery.of(context).size.height*0.05,
                          minWidth: MediaQuery.of(context).size.width*0.8,
                          onPressed: (){},
                          child: Text("Make an Appointment",style: myStyle(22,Colors.white,FontWeight.bold),),
                        ),
                      )
                    ],
                  ),
                ),
        
              )
            ],
          ),
        ),
      ),
    );
  }
}
