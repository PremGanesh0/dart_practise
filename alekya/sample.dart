

void main(){
Student student = Student();//("alekya",24,[1,2,222,1,1,2,1,12]);
student.name = "Alekya Pattem";
student.age = 24;
// student.attendance.add(1);
student.attendance = [1,1,1,1];
var present = 0;
for (var i in student.attendance){
    if (i == 1){
        present += 1;
    }
}
print(present);
print(student.name);
print(student.age);


for (int i=0; i<= 30; i++){
  student.attendanceList.add(Attendace(day: 1, isPresent: false));
}

student.attendanceList[0].isPresent = true;
student.attendanceList.add(Attendace(day:1, isPresent:false));
student.attendanceList.add(Attendace(day:2, isPresent:true));
student.attendanceList.add(Attendace(day:3, isPresent:false));
student.attendanceList.add(Attendace(day:4, isPresent:true));

var count = student.attendanceList.where( (element)=> element.isPresent).length;
print("Total present days are $count");

var present1 = 0;
for (var i in student.attendanceList){
    if (i.isPresent){
        present1 += 1;
    }
}

print("Total presenttt days are $present1");
}

class Student{
    String name = "";
    int age = 0;
    List<int> attendance = [1,23,3];
    List<Attendace> attendanceList = [Attendace(day:1, isPresent:false)];
    // Student(this.name,this.age,this.attendance);
}

class Attendace{
  int day;
  bool isPresent;

  Attendace({required this.day,required this.isPresent});
}