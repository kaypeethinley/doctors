import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

myStyle(
double fs, [Color ?Clr, FontWeight ?fw ]){
  return GoogleFonts.nunito(
    fontSize: fs,
    color : Clr,
    fontWeight: fw,
  );
}
Color primaryColor = Colors.blue;
Color secondaryColor = Colors.green;

String Patient = "Your details should reflect your genuine interests. Share something unique about yourself to provide more context related to who you are as a person and team member. You can describe any hobbies or interests, such as reading, hiking or scuba diving.";
