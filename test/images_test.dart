import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:are_you_lucky/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.diceSixFacesFive).existsSync(), isTrue);
    expect(File(Images.diceSixFacesFour).existsSync(), isTrue);
    expect(File(Images.diceSixFacesOne).existsSync(), isTrue);
    expect(File(Images.diceSixFacesSix).existsSync(), isTrue);
    expect(File(Images.diceSixFacesThree).existsSync(), isTrue);
    expect(File(Images.diceSixFacesTwo).existsSync(), isTrue);
  });
}
