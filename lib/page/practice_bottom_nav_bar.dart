import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:practice_gridview/data/data_medicine.dart';
import 'package:practice_gridview/page/doctor_page.dart';
import 'package:practice_gridview/page/page_medicine.dart';
import 'package:practice_gridview/page/patient_details.dart';
class PracticeBottomNavBar extends StatefulWidget {
  const PracticeBottomNavBar({super.key});

  @override
  State<PracticeBottomNavBar> createState() => _PracticeBottomNavBarState();
}

class _PracticeBottomNavBarState extends State<PracticeBottomNavBar> {
  List list = [
    homePage(),
    PatientDetails(),
    PageMedicine(list: allMedicineData[0]),
    PracticeBottomNavBar(),
  ];
    List<Icon> allItems = [
      Icon(Icons.home),
      Icon(Icons.category),
      Icon(Icons.search),

    ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        // selectedItemColor: Colors.blue,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        index: _currentIndex,
          onTap: (int index){
          _currentIndex = index;
          setState(() {

          });
          },
          items: allItems,
      ),
    );
  }
}
