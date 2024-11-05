import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:are_you_lucky/resources/resources.dart';

void main() {
  test('micons assets test', () {
    expect(File(MIcons.bombSvgrepoCom).existsSync(), isTrue);
    expect(File(MIcons.questionCircleSvgrepoCom).existsSync(), isTrue);
  });
}
