import 'package:vietnamese_lunar_core/vietnamese_lunar_core.dart';
import 'package:vietnamese_calendar_attributes/vietnamese_calendar_attributes.dart';

import 'constants/stars_28.dart';
import 'models/day_advice.dart';
import 'utils/good_bad_star_lookup.dart';
import 'utils/star_algorithms.dart';

class AuspiciousEngine {
  /// Returns the auspicious advice for the given LunarDate.
  static DayAdvice getAdvice(LunarDate date) {
    // 1. Get 28 Star
    // Convert LunarDate to Solar DateTime for 28 Star calculation
    // WORKAROUND: VnAttributeUtils.toSolar seems to have a bug where it passes 1-indexed month
    // to a 0-indexed API (VnLunarCore), resulting in 1 month offset.
    // We manually convert here using month - 1.
    final VnLunarCore core = VnLunarCore();
    final DateTime solarDate = core.convertLunarToSolar(
      date.day,
      date.month - 1, // Adjust for 0-indexed month in core
      date.year,
      date.isLeap,
    );

    final Star28 star28 = StarAlgorithms.getStar28(solarDate);

    // 2. Get Good/Bad Stars
    final List<String> goodStars = GoodBadStarLookup.getGoodStars(
      date.month,
      date.canChiNgay.chi,
    );
    final List<String> badStars = GoodBadStarLookup.getBadStars(
      date.month,
      date.canChiNgay.chi,
    );

    // 3. Get Truc and Hoang Dao from attributes package
    final String truc = date.truc.vnName;
    final bool isHoangDao = date.isHoangDao;

    // 4. Aggregate Advice
    final Set<String> goodFor = {};
    final Set<String> badFor = {};

    // From 28 Stars
    goodFor.addAll(star28.pros);
    badFor.addAll(star28.cons);

    return DayAdvice(
      isHoangDao: isHoangDao,
      truc: truc,
      star28: star28,
      goodStars: goodStars,
      badStars: badStars,
      goodFor: goodFor.toList(),
      badFor: badFor.toList(),
    );
  }
}
