
 import 'student.dart';

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

  print("Total present days are ${student.getAttendce()}");
  // print(' private total present days are ${student.totalPresentDays}');
}

enum AttendanceStatus { present, absent }

