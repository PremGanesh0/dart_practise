void main() {
  Student student = Student(
    name: "Alekya Pattem",
    age: 24,
    attendance: [
      AttendanceStatus.present,
      AttendanceStatus.absent,
      AttendanceStatus.present,
      AttendanceStatus.absent,
      AttendanceStatus.present,
      AttendanceStatus.absent,
      AttendanceStatus.present,
      AttendanceStatus.absent,
    ],
  );
  // Example of using forEach to iterate over attendance
  int totalPresentDays = 0;

  for (AttendanceStatus status in student.attendance) {
    if (status == AttendanceStatus.present) {
      totalPresentDays = totalPresentDays + 1;
      print('i =  is present $totalPresentDays times');
    } else {
      print('i =  is absent');
    }
  }
  print(totalPresentDays);
  for (int i = 0; i <= 30; i++) {
    student.attendanceList.add(Attendace(day: 1, isPresent: false));
  }

  student.attendanceList[0].isPresent = true;
  student.attendanceList.add(Attendace(day: 1, isPresent: false));
  student.attendanceList.add(Attendace(day: 2, isPresent: true));
  student.attendanceList.add(Attendace(day: 3, isPresent: false));
  student.attendanceList.add(Attendace(day: 4, isPresent: true));

  var count = student.attendanceList.where((element) => element.isPresent).length;

  var count1 = student.attendanceList.forEach((element) => element.isPresent == true);

  print("Total present days are $count");

  var present1 = 0;
  for (var i in student.attendanceList) {
    if (i.isPresent) {
      present1 += 1;
    }
  }

  print("Total presenttt days are $present1");
}

class Attendace {
  int? day;
  bool isPresent;

  Attendace({this.day, required this.isPresent});
}

enum AttendanceStatus { present, absent }

class Student {
  String name;
  int age = 0;
  List<AttendanceStatus> attendance = [
    AttendanceStatus.present,
    AttendanceStatus.absent,
    AttendanceStatus.present,
    AttendanceStatus.absent,
    AttendanceStatus.present,
    AttendanceStatus.absent,
    AttendanceStatus.present,
    AttendanceStatus.absent,
  ];
  List<Attendace> attendanceList = [Attendace(day: 1, isPresent: false)];
  Student({required this.name, required this.age, required this.attendance});
}
