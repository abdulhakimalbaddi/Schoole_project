
import 'dart:io';

void main(){
  
List<Student> _student=[];
var chooseoption;
print ('Please Choose your option)');

print ('A.Add New Student )');

print ('B.Add new mark )');
print ('C.Print Marks )');
chooseoption=stdin.readLineSync().toString();
switch(chooseoption){
  case 'A':
print ('Please Input Student info as (id,name,age,address,email,phone)');
final student=Student(id:int.parse(stdin.readLineSync().toString()),Name: stdin.readLineSync().toString(),age:int.parse(stdin.readLineSync().toString()),Address: stdin.readLineSync().toString(),Email: stdin.readLineSync().toString(), Phone: stdin.readLineSync().toString() ,rate:0);
 _student.add(student);
  break;
  case 'C':
 print(_student);
 break;
 default:
 print("nothingchoose");

}



}
class operationstudent{
 List<Student> _student=[];
  void addstudent({
    required int id,
    required String Name,
    required int age,
    required String Address,
    required String Email,
    required String Phone,
    required int rate

  }){
    _student.add(Student(id: id,Name: Name,age: age,Address: Address,Email:Email,Phone: Phone,rate: rate));
  }

}
class Person {
  Person({required this.id, required this.Name, required this.age, required this.Address});
    int id;
    String Name;
    int age;
    String Address;
   @override
   String toString() => 'Hello,id:$id and  My Name is:$Name and my Age is :$age and my address is:$Address ';
   String descripn() =>
   'Hello, My Name is:$Name and my Age is :$age and my address is:$Address';
   void printdesc() => print("Hello , I 'am $Name");
}

class Student extends Person {
  Student({required int id,required String Name,required int age,required String Address,required this.Email,required this.Phone,required rate})
   :super(id: id,Name: Name,age: age,Address: Address);
  final String Email;
  final String Phone;
  Map<int,int> rate ={
    1:0,
    2:0,
    3:0,
  };
 
@override
String toString() => '${super.toString()},email:$Email and Phone is :$Phone';
}

