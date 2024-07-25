import 'package:flutter/material.dart';
import 'package:practice_gridview/constant/constant.dart';
class PageMedicine extends StatelessWidget {
  List list;
  PageMedicine({super.key,required this.list});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff284b63),
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              style: myStyle(26,primaryColor,FontWeight.bold),
              children: [
                TextSpan(
                  text: "Doc",
                ),
                TextSpan(
                    text: "Time",
                    style: myStyle(26,secondaryColor,FontWeight.bold)
                ),
                TextSpan(
                  text: "+",
                  style: myStyle(26,primaryColor,FontWeight.bold),
                ),
              ]
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Text('Medicine Store', style: TextStyle(color: Colors.black, fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              GridView.builder(
                itemCount: list.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 9,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: SizedBox(
                      height: 10,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width*0.6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image:DecorationImage(image: AssetImage("${list[index].imgUrl}"),fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child:
                              Column(
                                children: [
                                  Text("${list[index].name}",style: myStyle(18,Colors.black,FontWeight.bold,),),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text("\$${list[index].Cost}",style: myStyle(16,Colors.black,FontWeight.bold),),
                                  Text("${list[index].weight}",style: myStyle(16,Colors.black,FontWeight.bold),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Center(
                                      child: MaterialButton(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                        ),
                                        height: MediaQuery.of(context).size.height * 0.01,
                                        minWidth: MediaQuery.of(context).size.width * 0.8,
                                        onPressed: () {},
                                        child:
                                        Text('Add Cart', style: myStyle(15, Colors.black, FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
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
          )
      ),
    );
  }
}

