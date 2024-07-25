import 'package:flutter/material.dart';
import 'package:practice_gridview/constant/constant.dart';
class PracticeDailogue extends StatelessWidget {
  const PracticeDailogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dailogue Box', style: myStyle(22,Colors.blueAccent),),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width * 0.5,
                color: Colors.deepOrangeAccent,
                onPressed: (){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text('Do you want to quit?'),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      },child: Text('Yes'),
                      ),
                      TextButton(onPressed: (){}, child: Text('No')),
                    ],
                  );
                });
                },
              child:
              Text('Show Dailogue', style: TextStyle(fontSize: 25,color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}
