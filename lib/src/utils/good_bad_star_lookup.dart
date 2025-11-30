import 'package:vietnamese_lunar_core/vietnamese_lunar_core.dart';
import 'package:vietnamese_calendar_attributes/vietnamese_calendar_attributes.dart';
import '../constants/good_bad_stars.dart';

class GoodBadStarLookup {
  /// Returns a list of Good Stars for the given lunar month and day branch.
  static List<String> getGoodStars(int lunarMonth, Chi dayBranch) {
    final monthData = GoodBadStarData.goodStars[lunarMonth];
    if (monthData == null) return [];

    final List<String> stars = [];
    final String branchName = _getChiName(dayBranch);

    monthData.forEach((starName, branches) {
      if (branches.contains(branchName)) {
        stars.add(starName);
      }
    });

    return stars;
  }

  /// Returns a list of Bad Stars for the given lunar month and day branch.
  static List<String> getBadStars(int lunarMonth, Chi dayBranch) {
    final monthData = GoodBadStarData.badStars[lunarMonth];
    if (monthData == null) return [];

    final List<String> stars = [];
    final String branchName = _getChiName(dayBranch);

    monthData.forEach((starName, branches) {
      if (branches.contains(branchName)) {
        stars.add(starName);
      }
    });

    return stars;
  }

  static String _getChiName(Chi chi) {
    // Map Chi enum to Vietnamese string used in data
    // Assuming Chi enum order or names.
    // Ideally we should use the name property if it matches, or map it manually.
    switch (chi) {
      case Chi.ty:
        return 'Tý';
      case Chi.suu:
        return 'Sửu';
      case Chi.dan:
        return 'Dần';
      case Chi.mao:
        return 'Mão';
      case Chi.thin:
        return 'Thìn';
      case Chi.ty_:
        return 'Tỵ'; // Note: Tỵ vs Tý
      case Chi.ngo:
        return 'Ngọ';
      case Chi.mui:
        return 'Mùi';
      case Chi.than:
        return 'Thân';
      case Chi.dau:
        return 'Dậu';
      case Chi.tuat:
        return 'Tuất';
      case Chi.hoi:
        return 'Hợi';
    }
  }
}
