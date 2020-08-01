import 'package:flutter_test/flutter_test.dart';

import 'package:health_planner_models/health_planner_models.dart';
import './test_data.dart';

void main() {
  test('from and to map', () {
    final clinic = ClinicModel.fromMap(clinicMap);
    final map = clinic.toMap();
    final clinic2 = ClinicModel.fromMap(map);
    expect(clinic.address.toString(), '28 Villiers St, Port Fairy, VIC 3284');
    expect(clinic2.address.toString(), '28 Villiers St, Port Fairy, VIC 3284');
  });
}
