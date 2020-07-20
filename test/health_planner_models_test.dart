import 'package:flutter_test/flutter_test.dart';

import 'package:health_planner_models/health_planner_models.dart';
import './test_data.dart';

void main() {
  test('adds one to input values', () {
    final clinic = ClinicModel.fromMap(clinicMap);
    expect(clinic.address.toString(), '28 Villiers St, Port Fairy, VIC 3284');
  });
}
