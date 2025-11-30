import '../constants/stars_28.dart';

/// Utilities for calculating the 28 Mansions (Nhị Thập Bát Tú).
class StarAlgorithms {
  // Anchor: January 1, 2024 was Sao Trương.
  // Trương is index 25 in the Star28 enum (if starting from Giác = 0).
  static final DateTime _anchorDate = DateTime(2024, 1, 1);
  static const Star28 _anchorStar = Star28.truong;

  /// Returns the 28-Star for a given solar date.
  /// The cycle is continuous and independent of the lunar calendar.
  static Star28 getStar28(DateTime date) {
    // Normalize dates to midnight to ensure correct day difference
    final DateTime normalizedDate = DateTime(date.year, date.month, date.day);
    final DateTime normalizedAnchor = DateTime(
      _anchorDate.year,
      _anchorDate.month,
      _anchorDate.day,
    );

    final int diff = normalizedDate.difference(normalizedAnchor).inDays;

    // Calculate index
    // Star28.values.length is 28
    final int anchorIndex = Star28.values.indexOf(_anchorStar);
    int targetIndex = (anchorIndex + diff) % 28;

    if (targetIndex < 0) {
      targetIndex += 28;
    }

    return Star28.values[targetIndex];
  }
}
