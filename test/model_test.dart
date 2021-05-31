import 'package:flutter_test/flutter_test.dart';
import 'package:health_planner_models/address.dart';
import 'package:health_planner_models/doctor.dart';
import 'package:health_planner_models/interval.dart';

import 'data/address.dart';
import 'data/doctor.dart';
import 'data/interval.dart';

void main() {
  test('address', () {
    final n = addressTestData.length;
    for (var i = 0; i < n; i++) {
      print('test address test case $i');
      final data = addressTestData[i];
      final input = Map<String, Object>.from(data['input'] as Map);
      final stringValue = data['value'] as String;
      final address = AddressModel.fromJson(input);

      final address2 = AddressModel.fromJson(address.toJson());
      expect(address, address2);
      expect(address2.toString(), stringValue);
      print('done address test case $i\n');
    }
  });

  test('doctor', () {
    final n = doctorTestData.length;
    for (var i = 0; i < n; i++) {
      print('test doctor test case $i');
      final data = doctorTestData[i];
      final input = Map<String, Object>.from(data['input'] as Map);
      final stringValue = data['value'] as String;
      final doctor = DoctorModel.fromJson(input);

      final doctor2 = DoctorModel.fromJson(doctor.toJson());
      expect(doctor, doctor2);
      expect(doctor2.toString(), stringValue);
      print('done doctor test case $i\n');
    }
  });

  test('interval', () {
    final n = doctorTestData.length;
    for (var i = 0; i < n; i++) {
      print('test interval test case $i');
      final data = intervalTestData[i];
      final input = data['input'] as String;
      final interval = IntervalModel.fromJson(input);

      expect(input, interval.toJson());
      expect(interval.startHour, data['startHour']);
      expect(interval.startMinute, data['startMinute']);
      expect(interval.endHour, data['endHour']);
      expect(interval.endMinute, data['endMinute']);
      print('done interval test case $i\n');
    }
  });
}
