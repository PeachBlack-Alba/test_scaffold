import 'package:flutter_test/flutter_test.dart';
import 'package:test_scaffold/example.dart';

void main() {
  group('Example Unit Test', () {
    test('Sample Test', () {
      // Arrange
      final example = Example();

      // Act
      final result = example.add(2, 3);

      // Assert
      expect(result, 5);
    });
  });
}
