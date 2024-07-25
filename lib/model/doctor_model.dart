class DoctorModel{
String name;
String imgUrl;
String speciality;
double rating;
double payment;
int patient;
int experience;
List appointmentDays;
List appointmentTime;
String aboutDoc;

DoctorModel({
  required this.name,
  required this.imgUrl,
  required this.speciality,
  required this.rating,
  required this.payment,
  required this.patient,
  required this.experience,
  required this.appointmentDays,
  required this.appointmentTime,
  required this.aboutDoc,
});
}