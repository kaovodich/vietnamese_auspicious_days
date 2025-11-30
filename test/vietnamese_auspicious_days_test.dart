import 'package:flutter_test/flutter_test.dart';
import 'package:vietnamese_auspicious_days/vietnamese_auspicious_days.dart';
import 'package:vietnamese_lunar_core/vietnamese_lunar_core.dart';
import 'package:vietnamese_calendar_attributes/vietnamese_calendar_attributes.dart';

void main() {
  group('28 Mansions (Nhị Thập Bát Tú)', () {
    test('Anchor date 2024-01-01 should be Sao Trương', () {
      final date = DateTime(2024, 1, 1);
      final star = StarAlgorithms.getStar28(date);
      expect(star, Star28.truong);
    });

    test('2024-01-02 should be Sao Dực', () {
      final date = DateTime(2024, 1, 2);
      final star = StarAlgorithms.getStar28(date);
      expect(star, Star28.duc);
    });

    test('2024-01-04 should be Sao Giác', () {
      final date = DateTime(2024, 1, 4);
      final star = StarAlgorithms.getStar28(date);
      expect(star, Star28.giac);
    });
  });

  group('Age Conflict (Xung Khắc Tuổi)', () {
    test('Luc Xung: Ty vs Ngo', () {
      expect(ConflictChecker.isAgeConflict(Chi.ty, Chi.ngo), isTrue);
    });

    test('Luc Hai: Ty vs Mui', () {
      expect(ConflictChecker.isAgeConflict(Chi.ty, Chi.mui), isTrue);
    });

    test('No Conflict: Ty vs Suu (Luc Hop)', () {
      expect(ConflictChecker.isAgeConflict(Chi.ty, Chi.suu), isFalse);
    });

    test('No Conflict: Ty vs Ty', () {
      expect(ConflictChecker.isAgeConflict(Chi.ty, Chi.ty), isFalse);
    });
  });

  group('Verdict (Ket Luan)', () {
    test('Get Advice for a specific date', () {
      // 2024-01-01 Solar
      final date = DateTime(2024, 1, 1);
      // Use extension to get LunarDate
      final lunarDate = VnAttributeUtils.fromSolar(date);

      final advice = AuspiciousEngine.getAdvice(lunarDate);

      expect(advice.star28, Star28.truong);
      expect(advice.goodFor, contains('Khai trương'));
    });
  });
}
