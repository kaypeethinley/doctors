import 'package:flutter/material.dart';
import 'package:practice_gridview/constant/constant.dart';
import 'package:practice_gridview/data/covid_data.dart';
class CovidHomePage extends StatelessWidget {
  const CovidHomePage({super.key});

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
              SizedBox(
                height: 30,
              ),
              Center(child: Text('Covid-19',style: myStyle(26,primaryColor,FontWeight.bold),)),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: allCovidDoc.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    color: Color(0xff284b63),
                    shadowColor: Colors.blueAccent,
                    elevation: 8,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            height: 250,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white ,width: 2),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                image: DecorationImage(image: AssetImage("${allCovidDoc[index].imgUrl}",),fit:BoxFit.cover)
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text("${allCovidDoc[index].country}", style: myStyle(30, Colors.white, FontWeight.bold), textAlign: TextAlign.center,),
                          Text("Infected: ${allCovidDoc[index].infected}", style: myStyle(22, Colors.white,), textAlign: TextAlign.center,),
                          Text("Death: ${allCovidDoc[index].death}", style: myStyle(22, Colors.white,), textAlign: TextAlign.center,),
                        ],
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

