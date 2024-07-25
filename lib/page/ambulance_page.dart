import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:practice_gridview/constant/constant.dart';
class ambulance_page extends StatelessWidget {
  const ambulance_page({super.key});

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
        body:
        Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Ambulance',style: myStyle(35,secondaryColor,FontWeight.bold),),
              ],
            ),
            // SizedBox(
            //   height: 10,
            // ),
            Column(
              children: [
                Lottie.asset('assets/animation/Animation - 1720956148393.json'),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed: () {  },
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width*0.4,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text('Call Now : 112',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),),
                  ),

                ),
              ],
            ),

          ],
        )
    );
  }
}
