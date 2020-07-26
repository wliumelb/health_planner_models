import 'package:flutter/foundation.dart';
import 'package:health_planner_models/patient.dart';
import 'package:intl/intl.dart';

class AppointmentModel {
  final String bookedVia; // e.g. Health Planner APP, Web, etc
  final DateTime time;
  final int length; // length of appointment in minutes
  final String uid;
  final String doctorUid;
  final PatientModel patient;
  final BookingStatus status;
  final bool isManualInput;

  AppointmentModel({
    @required this.bookedVia,
    @required this.time,
    @required this.length,
    @required this.uid,
    @required this.doctorUid,
    @required this.status,
    @required this.patient,
    @required this.isManualInput,
  });

  static AppointmentModel fromMap(Map<String, dynamic> map) {
    BookingStatus status = BookingStatus.booked;
    bool isFinished = map['isFinished'] ?? false;
    bool isCheckedIn = map['isCheckedIn'] ?? false;
    bool isConfirmed = map['isConfirmed'] ?? false;
    bool isManualInput = map['isManualInput'] ?? false;
    bool isNoShow = map['isNoShow'] ?? false;
    bool isCancelled = map['isCancelled'] ?? false;

    final patient = PatientModel.fromMap(map['patient']);

    // the order of ifs matters!
    if (isCancelled) {
      status = BookingStatus.cancelled;
    } else if (isNoShow) {
      status = BookingStatus.noShow;
    } else if (isFinished) {
      status = BookingStatus.finished;
    } else if (isCheckedIn) {
      status = BookingStatus.chekcedIn;
    } else if (isConfirmed) {
      status = BookingStatus.confirmed;
    }
    return AppointmentModel(
      bookedVia: map['bookedVia'],
      time: DateTime.parse(map['time']),
      length: map['length'],
      uid: map['uid'],
      doctorUid: map['doctorUid'],
      status: status,
      patient: patient,
      isManualInput: isManualInput,
    );
  }

  Map<String, dynamic> toMap() {
    bool isCancelled = this.status == BookingStatus.cancelled;
    bool isNoShow = this.status == BookingStatus.noShow;
    bool isFinished = this.status == BookingStatus.finished;
    bool isCheckedIn = this.status == BookingStatus.chekcedIn || isFinished;
    bool isConfirmed = this.status == BookingStatus.confirmed || isCheckedIn;

    return {
      'uid': this.uid,
      'bookedVia': this.bookedVia,
      'doctorUid': this.doctorUid,
      'length': this.length,
      'isManualInput': this.isManualInput,
      'patient': this.patient.toMap(),
      'time': DateFormat('yyyy-MM-dd').format(this.time),
      'isCancelled': isCancelled,
      'isNoShow': isNoShow,
      'isFinished': isFinished,
      'isCheckedIn': isCheckedIn,
      'isConfirmed': isConfirmed,
    };
  }
}

enum BookingStatus {
  booked, // user has booked an appointment
  confirmed, // user has confirmed some time before the appointment
  chekcedIn, // user has arrived at the clinic and finished checkin
  finished, // appointment is dinished
  noShow, // user did not show up
  cancelled, // cancelled
}
