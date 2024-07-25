import 'package:flutter/material.dart';
import 'package:practice_gridview/constant/constant.dart';
import 'package:practice_gridview/data/data_medicine.dart';
import 'package:practice_gridview/data/medicine_data.dart';
import 'package:practice_gridview/page/page_medicine.dart';
class MedicinePage extends StatelessWidget {
  const MedicinePage({super.key});

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
        child: Center(
          child: Column(
            children: [
              Text('Pharmacy Shop', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, color: Colors.white),),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: allmedicinedata.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 0.99,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (builder)=>PageMedicine(list: allMedicineData[index],
                          )));
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Card(
                        shadowColor: Colors.white,
                        elevation: 7,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              height: 200,
                              width: 350,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white ,width: 2),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                  image: DecorationImage(image: AssetImage("${allmedicinedata[index].imgUrl}",),fit:BoxFit.cover)
                              ),
                            ),
                            Text("${allmedicinedata[index].name}", style: myStyle(24, Colors.black, FontWeight.bold), textAlign: TextAlign.center,),
                            Text("${allmedicinedata[index].Location}", style: myStyle(20, Colors.black,), textAlign: TextAlign.center,),
                            Container(
                              height: 45,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(90),
                                color: Colors.green,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star, size: 20, color: Colors.yellow,),
                                  Text("${allmedicinedata[index].rating}", style: myStyle(16, Colors.white,), textAlign: TextAlign.center,)
                                ],
                              ),
                            ),
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
