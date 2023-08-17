import 'dart:convert';
import 'dart:io';
void main() {
 Student student1= Student(name: 'yehia', id: 111, level: 1, marks: 90);
 student1.bonus(20);
 print(student1.marks);
 student1.info();
 School student2 =School(name: "yehia", address: "ain shams", boysGroup: ["yehia","yosef"], girlsGroup: ["mariam","alaa"]);
 student2.addStudent("yehia", "male", 19);
 student2.removeStudent("yosef");
 student2.info();

}
class Student{
 String name;
 int id;
 int level;
 double marks;
 int? phone;
 String? email;
 Student({ required this.name,required this.id, required this.level,required this.marks ,this.phone, this.email});

  double bonus(double b){
  marks=marks+b;
  return marks;
 }
 double minus(double m){
  marks=marks-m;
  return marks;
 }
 void info(){
   print("your name is $name");
   print("your id is $id");
   print("your level is $level");
   print("your marks is $marks");
   print("your phone is $phone");
   print("your email is $email");
 }
 }
 class School {
   String name;
   String address;
   String? email;
   int? phone;
   List boysGroup;
   List girlsGroup;

   School(
       {required this.name, required this.address, required this.boysGroup, required this.girlsGroup, this.phone, this.email});

   addStudent(String username, String gender, int age) {
     bool ch1 = boysGroup.contains(username);
     bool ch2 = girlsGroup.contains(username);
     if ((gender == 'male') && (age >= 6 && age <= 18) && (ch1 == true)) {
       boysGroup.add(username);
     }
     else if (ch1 == false) {
       print("$username is already exist");
     }
     else if (!(age >= 6 && age <= 18)) {
       print(
           " This  age is not suitable in this school , the range of age is 6:18");
     }
     if ((gender == 'female') && (age >= 6 && age <= 18) && (ch2 == true)) {
       girlsGroup.add(username);
     }
     else if (ch2 == false) {
       print("$username is already exist");
     }
     else if (!(age >= 6 && age <= 18)) {
       print(
           " This  age is not suitable in this school , the range of age is 6:18");
     }
   }

   removeStudent(String username) {
     if ((boysGroup.contains(username)) || (girlsGroup.contains(username))) {
       boysGroup.remove(username);
       girlsGroup.remove(username);
       print("removed successfully!");
     }
     else
       print("$username is not exist in the school");
   }

   info() {
     if (phone == " " && email == " ") {
       print(
           " $name school in $address has girls group $girlsGroup and boys group $boysGroup ");
     }
   }


 }
