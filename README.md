# vietnamese_auspicious_days

**The "Expert Brain" for the Vietnamese Calendar ecosystem.**

`vietnamese_auspicious_days` is a powerful Dart package that analyzes raw date data to determine **Auspicious (Good)** and **Inauspicious (Bad)** days for specific activities such as weddings, construction, travel, and grand openings. It implements traditional Vietnamese algorithms to provide actionable advice.

## Key Logic

This package implements three core pillars of traditional fortune-telling:

1.  **The 28 Mansions (Nhị Thập Bát Tú):** Calculates the governing star of the day based on the perpetual astronomical cycle (e.g., Sao Giác, Sao Cang).
2.  **Age Conflict (Xung Khắc):** Detects "Lục Xung" (Six Clashes) and "Lục Hại" (Six Harms) between the Day Branch (Chi) and the User's Age (Chi).
3.  **Star System (Ngọc Hạp Thông Thư):** Identifies specific Good and Bad stars present on a given day (e.g., Thiên Đức vs. Thụ Tử).

## Installation

This package is part of the Vietnamese Calendar ecosystem and depends on `vietnamese_lunar_core` and `vietnamese_calendar_attributes`.

Add the following to your `pubspec.yaml`:

```yaml
dependencies:
  vietnamese_auspicious_days:
    git:
      url: https://github.com/kaovodich/vietnamese_auspicious_days.git
      ref: main
  # Ensure you also have the base dependencies if not transitively resolved
  vietnamese_lunar_core:
    git:
      url: https://github.com/kaovodich/kaovodich_vietnamese_lunar_core.git
      ref: master
  vietnamese_calendar_attributes:
    git:
      url: https://github.com/kaovodich/vietnamese_calendar_attributes.git
      ref: master
```

## Usage Examples

### Scenario A: Get Daily Advice (What should I do today?)

Use the `AuspiciousEngine` to get a comprehensive verdict for a specific Lunar Date.

```dart
import 'package:vietnamese_auspicious_days/vietnamese_auspicious_days.dart';
import 'package:vietnamese_lunar_core/vietnamese_lunar_core.dart';
import 'package:vietnamese_calendar_attributes/vietnamese_calendar_attributes.dart';

void main() {
  // 1. Create a Lunar Date (e.g., from Solar)
  final solarDate = DateTime.now();
  final lunarDate = VnAttributeUtils.fromSolar(solarDate);

  // 2. Get Advice
  final DayAdvice advice = AuspiciousEngine.getAdvice(lunarDate);

  print('Sao chủ: ${advice.star28.vietnameseName}'); // e.g., Sao Giác
  print('Trực: ${advice.truc}'); // e.g., Trực Kiên

  if (advice.isHoangDao) {
    print('Đây là ngày Hoàng Đạo (Tốt)');
  }

  print('Nên làm: ${advice.goodFor.join(', ')}');
  print('Kỵ làm: ${advice.badFor.join(', ')}');
}
```

### Scenario B: Check Age Conflict (Is this day safe for ME?)

Check if the current day conflicts with your specific age (Year Branch).

```dart
import 'package:vietnamese_auspicious_days/vietnamese_auspicious_days.dart';
import 'package:vietnamese_calendar_attributes/vietnamese_calendar_attributes.dart';

void main() {
  // User is born in the Year of the Rat (Tý)
  Chi userAge = Chi.ty;
  
  // Today is a Horse day (Ngọ)
  Chi dayBranch = Chi.ngo; 

  bool isConflict = ConflictChecker.isAgeConflict(userAge, dayBranch);

  if (isConflict) {
    print('Cảnh báo: Ngày này xung khắc với tuổi của bạn (Lục Xung/Lục Hại)!');
    print('Hạn chế làm việc đại sự.');
  } else {
    print('Ngày này hợp hoặc bình hòa với tuổi của bạn.');
  }
}
```

### Scenario C: Advanced Star Lookup

Retrieve the full list of Good and Bad stars for UI display.

```dart
import 'package:vietnamese_auspicious_days/vietnamese_auspicious_days.dart';
import 'package:vietnamese_calendar_attributes/vietnamese_calendar_attributes.dart';

void main() {
  int lunarMonth = 1; // January
  Chi dayBranch = Chi.ty; // Rat day

  List<String> goodStars = GoodBadStarLookup.getGoodStars(lunarMonth, dayBranch);
  List<String> badStars = GoodBadStarLookup.getBadStars(lunarMonth, dayBranch);

  print('Sao Tốt: $goodStars'); // e.g., [Thiên Đức, Nguyệt Đức...]
  print('Sao Xấu: $badStars');  // e.g., [Thụ Tử, Sát Chủ...]
}
```

## Features List

*   **28 Mansions Cycle:** Accurate astronomical calculation of the 28 stars, cycling continuously through the calendar.
*   **Actionable Verdicts:** Goes beyond raw data to provide specific "Good For" and "Bad For" activity lists.
*   **Personalization:** The only package in the ecosystem that considers the User's Age to detect personal conflicts (Xung Khắc).
*   **Extensible:** Built on top of `vietnamese_lunar_core` and `vietnamese_calendar_attributes` for a unified experience.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

**DISCLAIMER:** The software is provided "AS IS", without warranty of any kind. The advice generated is based on traditional algorithms and should be used for reference only.
