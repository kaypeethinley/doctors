import 'package:flutter/material.dart';
import 'package:practice_gridview/constant/constant.dart';
import 'package:practice_gridview/data/hospital_data.dart';
import 'package:practice_gridview/page/hospital_info.dart';
class Hospital_Page extends StatelessWidget {
  Hospital_Page({super.key});

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
                TextSpan(
                    text: "Time", style: myStyle(26,secondaryColor,FontWeight.bold)
                ),
                TextSpan(
                  text: "+",style: myStyle(26,primaryColor,FontWeight.bold),
                ),
              ]
          ),
        ),
        centerTitle: true,
        actions: [Icon(Icons.more_vert_outlined)],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(5),
          child: Column(
            children: [
              Center(child: Text('Covid-19',style: myStyle(26,primaryColor,FontWeight.bold),)),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: allDocs.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (builder)=>HospitalInfo(hospitalModel:allDocs[index] )));
                    },
                    child: Card(
                      // color: Color(0xff284b63),
                      shadowColor: Colors.blueAccent,
                      elevation: 8,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 250,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white ,width: 2),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                  image: DecorationImage(image: AssetImage("${allDocs[index].imgUrl}"),fit:BoxFit.cover)
                              ),
                            ),
                            Text("${allDocs[index].HospitalName}", style: myStyle(22, Colors.white, FontWeight.bold), textAlign: TextAlign.center,),
                            Text("${allDocs[index].Location}", style: myStyle(16, Colors.white), textAlign: TextAlign.center),
                            Spacer(),
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90),
                                  color: Colors.white
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star, size: 20, color: Colors.yellow,),
                                  Text("${allDocs[index].rating}"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
