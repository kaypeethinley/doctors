import 'package:flutter/material.dart';
import 'package:practice_gridview/data/doctor_data.dart';
import 'package:practice_gridview/data/hospital_data.dart';
import 'package:practice_gridview/page/doctor2nd_page.dart';
class HeroAnimationDemo extends StatefulWidget {
  const HeroAnimationDemo({super.key});

  @override
  State<HeroAnimationDemo> createState() => _HeroAnimationDemoState();
}

class _HeroAnimationDemoState extends State<HeroAnimationDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Hero Animation 1'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          InkWell(
            onTap: (){},
            child: CircleAvatar(
              maxRadius: 50,

            ),
          ),
        ],
      ),
    );
  }
}
