import 'attendance.dart';

class Student extends Object with AttendanceMixin  {
  String name;
  int age = 0;
  int _totalPresentDays = 0;
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

  Student({required this.name, required this.age, required this.attendance, });

  getAttendce() {
    int totalPresentDays = 0;

    for (AttendanceStatus status in attendance) {
      if (status == AttendanceStatus.present) {
        totalPresentDays = totalPresentDays + 1;
        print('i =  is present $totalPresentDays times');
      } else {
        print('i =  is absent');
      }
    }

    return totalPresentDays;
  }
}


mixin AttendanceMixin {

}
