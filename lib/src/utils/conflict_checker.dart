import 'package:vietnamese_lunar_core/vietnamese_lunar_core.dart';
import 'package:vietnamese_calendar_attributes/vietnamese_calendar_attributes.dart';

class ConflictChecker {
  /// Checks if the user's age (Year Branch) conflicts with the Day Branch.
  /// Returns true if there is a conflict (Luc Xung or Luc Hai).
  static bool isAgeConflict(Chi userAge, Chi dayBranch) {
    return isLucXung(userAge, dayBranch) || isLucHai(userAge, dayBranch);
  }

  /// Checks for Six Clashes (Lục Xung).
  static bool isLucXung(Chi a, Chi b) {
    switch (a) {
      case Chi.ty:
        return b == Chi.ngo;
      case Chi.suu:
        return b == Chi.mui;
      case Chi.dan:
        return b == Chi.than;
      case Chi.mao:
        return b == Chi.dau;
      case Chi.thin:
        return b == Chi.tuat;
      case Chi.ty_:
        return b == Chi.hoi;
      case Chi.ngo:
        return b == Chi.ty;
      case Chi.mui:
        return b == Chi.suu;
      case Chi.than:
        return b == Chi.dan;
      case Chi.dau:
        return b == Chi.mao;
      case Chi.tuat:
        return b == Chi.thin;
      case Chi.hoi:
        return b == Chi.ty_;
    }
  }

  /// Checks for Six Harms (Lục Hại).
  static bool isLucHai(Chi a, Chi b) {
    switch (a) {
      case Chi.ty:
        return b == Chi.mui;
      case Chi.suu:
        return b == Chi.ngo;
      case Chi.dan:
        return b == Chi.ty_;
      case Chi.mao:
        return b == Chi.thin;
      case Chi.thin:
        return b == Chi.mao;
      case Chi.ty_:
        return b == Chi.dan;
      case Chi.ngo:
        return b == Chi.suu;
      case Chi.mui:
        return b == Chi.ty;
      case Chi.than:
        return b == Chi.hoi;
      case Chi.dau:
        return b == Chi.tuat;
      case Chi.tuat:
        return b == Chi.dau;
      case Chi.hoi:
        return b == Chi.than;
    }
  }
}
