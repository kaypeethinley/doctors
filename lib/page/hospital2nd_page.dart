import 'package:flutter/material.dart';
import 'package:practice_gridview/constant/constant.dart';
import 'package:practice_gridview/data/hospital_data.dart';
import 'package:practice_gridview/model/hospital_model.dart';
import 'package:practice_gridview/page/hospital_info.dart';

class HospitalDetails extends StatelessWidget {
  const HospitalDetails({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              style: myStyle(26,primaryColor,FontWeight.bold),
              children: [
                TextSpan(text: "Doc"),
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
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text('+Hospital', style: TextStyle(fontSize: 30, color: Colors.blue),),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: allDocs.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>HospitalInfo(hospitalModel: allDocs[index],)));
                    },
                    child: Card(
                      elevation: 8,
                      child: Column(
                        children: [
                             Column(
                              children: [
                      Container(
                        height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage(("${allDocs[index].imgUrl}"),),
                  ),
                  borderRadius: BorderRadius.circular(10),
                  ),
                      ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text("${allDocs[index]. HospitalName}", style: myStyle(17, Colors.black, FontWeight.bold), textAlign: TextAlign.center),
                                SizedBox(
                                  // height: 20,
                                ),
                                Text("${allDocs[index].Location}", style: myStyle(14, Colors.black, FontWeight.bold), textAlign: TextAlign.center),
                                // SizedBox(
                                //   height: 20,
                                // ),
                                // Spacer(),
                                Container(
                                  height: 41,
                                  width: 75,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blueGrey
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.star, size: 25, color: Colors.yellow,),
                                      Text("${allDocs[index].rating}"),
                                    ],
                                  ),
                                )
                              ],
                            ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
