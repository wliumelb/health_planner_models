import 'package:json_annotation/json_annotation.dart';
import 'package:health_planner_models/patient.dart';

part 'appointment.g.dart';

@JsonSerializable(explicitToJson: true)
class AppointmentModel {
  final String uid;

  final String bookedVia; // e.g. Health Planner APP, Web, etc

  @JsonKey(name: 'timeStamp')
  final DateTime time;

  final int length; // length of appointment in minutes

  final String doctorUid;

  final PatientModel patient;
  
  final BookingStatus status;

  final bool isManualInput;

  AppointmentModel({
    required this.bookedVia,
    required this.time,
    required this.length,
    required this.uid,
    required this.doctorUid,
    required this.status,
    required this.patient,
    required this.isManualInput,
  });
  factory AppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentModelFromJson(json);
  Map<String, dynamic> toJson() => _$AppointmentModelToJson(this);
}

enum BookingStatus {
  booked, // user has booked an appointment
  confirmed, // user has confirmed some time before the appointment
  chekcedIn, // user has arrived at the clinic and finished checkin
  finished, // appointment is dinished
  noShow, // user did not show up
  cancelled, // cancelled
}
