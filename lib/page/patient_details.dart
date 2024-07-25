import 'package:flutter/material.dart';
import 'package:practice_gridview/constant/constant.dart';

class PatientDetails extends StatelessWidget {
  const PatientDetails ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: RichText(
            text: TextSpan(style: myStyle(26, primaryColor, FontWeight.bold),
                children: [
                  TextSpan(text: "Doc",
                  ),
                  TextSpan(text: "Time", style: myStyle(26, secondaryColor, FontWeight.bold),
                  ),
                  TextSpan(text: "+", style: myStyle(26, primaryColor, FontWeight.bold),
                  ),
                ]),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white70,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              height: MediaQuery.of(context).size.height * 0.50,
              width: MediaQuery.of(context).size.width * 0.70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/image/photo_2024-07-18_08-54-33.jpg"),
                    fit: BoxFit.cover
                ),
              ),
            ),
            Card(
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text("Name:", style: myStyle(22, Colors.black, FontWeight.bold),
                        ),
                        Text("Age:", style: myStyle(22, Colors.black, FontWeight.bold),
                        ),
                        Text("Location:", style: myStyle(22, Colors.black, FontWeight.bold),
                        ),
                        Text("Disease:", style: myStyle(22, Colors.black, FontWeight.bold),
                        ),
                        Text("Contact:", style: myStyle(22, Colors.black, FontWeight.bold),
                        ),
                        Text("Email:", style: myStyle(22, Colors.black, FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Kezang Thinley", style: myStyle(20, Colors.black,),
                        ),
                        SizedBox(height: 9,),
                        Text("25 Years", style: myStyle(20, Colors.black,),
                        ),
                        Text("Bhutan", style: myStyle(20, Colors.black,),
                        ),
                        Text("Ashma", style: myStyle(20, Colors.black,),
                        ),
                        Text("17659845", style: myStyle(20, Colors.black,),
                        ),
                        Column(
                          children: [
                            Text("kelzangy27@gmail.com", style: myStyle(20,Colors.black,),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
