import 'package:flutter/material.dart';
import 'package:practice_gridview/constant/constant.dart';
import 'package:practice_gridview/data/hospital_data.dart';
import 'package:practice_gridview/model/hospital_model.dart';
class HospitalInfo extends StatelessWidget {
  HospitalModel hospitalModel;
 HospitalInfo({super.key, required this.hospitalModel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              style: myStyle(26,primaryColor,FontWeight.bold),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(hospitalModel.HospitalName, style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        SizedBox(
          height: 30,
        ),
        Image(image: AssetImage(hospitalModel.imgUrl,),
          // height: 200,
          width: double.infinity,
          height: 200,
            ),
            SizedBox(
              height: 15,
            ),
            Icon(Icons.location_on_outlined),
            SizedBox(
              height: 10,
            ),
            Text(hospitalModel.Location, style: TextStyle(fontSize: 17),),
            SizedBox(
              height: 20,
            ),
            Text(hospitalModel.AboutHospital, style: TextStyle(fontSize: 17),),
          ],
        ),
      ),
    );
  }
}
