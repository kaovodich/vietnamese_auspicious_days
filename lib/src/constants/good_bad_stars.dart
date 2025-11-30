import 'package:vietnamese_lunar_core/vietnamese_lunar_core.dart';

class GoodBadStarData {
  // Map<Month, Map<StarName, List<Chi>>>
  // Note: Using int for Chi index (0=Ty, 1=Suu...) to avoid dependency issues if Chi enum is complex,
  // but better to use Chi enum if possible. Let's assume we map Chi to int or use Chi enum directly if we can import it.
  // For simplicity and robustness, I will use Chi names as keys or just check against Chi enum.
  // Here I'll use a helper to get Chi from int.

  // Bad Stars (Sao Xấu)
  static const Map<int, Map<String, List<String>>> badStars = {
    1: {
      'Sát Chủ': ['Tỵ'],
      'Thụ Tử': ['Tuất'],
      'Đại Hao': ['Ngọ'],
    }, // Month 1
    2: {
      'Sát Chủ': ['Tý'],
      'Thụ Tử': ['Thìn'],
      'Đại Hao': ['Mùi'],
    },
    3: {
      'Sát Chủ': ['Mùi'],
      'Thụ Tử': ['Hợi'],
      'Đại Hao': ['Thân'],
    },
    4: {
      'Sát Chủ': ['Mão'],
      'Thụ Tử': ['Tỵ'],
      'Đại Hao': ['Dậu'],
    },
    5: {
      'Sát Chủ': ['Thân'],
      'Thụ Tử': ['Tý'],
      'Đại Hao': ['Tuất'],
    },
    6: {
      'Sát Chủ': ['Tuất'],
      'Thụ Tử': ['Ngọ'],
      'Đại Hao': ['Hợi'],
    },
    7: {
      'Sát Chủ': ['Hợi'],
      'Thụ Tử': ['Sửu'],
      'Đại Hao': ['Tý'],
    },
    8: {
      'Sát Chủ': ['Sửu'],
      'Thụ Tử': ['Mùi'],
      'Đại Hao': ['Sửu'],
    },
    9: {
      'Sát Chủ': ['Ngọ'],
      'Thụ Tử': ['Dần'],
      'Đại Hao': ['Dần'],
    },
    10: {
      'Sát Chủ': ['Dậu'],
      'Thụ Tử': ['Thân'],
      'Đại Hao': ['Mão'],
    },
    11: {
      'Sát Chủ': ['Dần'],
      'Thụ Tử': ['Mão'],
      'Đại Hao': ['Thìn'],
    },
    12: {
      'Sát Chủ': ['Thìn'],
      'Thụ Tử': ['Dậu'],
      'Đại Hao': ['Tỵ'],
    },
  };

  // Good Stars (Sao Tốt)
  static const Map<int, Map<String, List<String>>> goodStars = {
    1: {
      'Thiên Hỷ': ['Tuất'],
      'Thiên Phú': ['Thìn'],
    },
    2: {
      'Thiên Hỷ': ['Hợi'],
      'Thiên Phú': ['Tỵ'],
    },
    3: {
      'Thiên Hỷ': ['Tý'],
      'Thiên Phú': ['Dần'],
    },
    4: {
      'Thiên Hỷ': ['Sửu'],
      'Thiên Phú': ['Mùi'],
    },
    5: {
      'Thiên Hỷ': ['Dần'],
      'Thiên Phú': ['Thân'],
    },
    6: {
      'Thiên Hỷ': ['Mão'],
      'Thiên Phú': ['Hợi'],
    },
    7: {
      'Thiên Hỷ': ['Thìn'],
      'Thiên Phú': ['Tuất'],
    },
    8: {
      'Thiên Hỷ': ['Tỵ'],
      'Thiên Phú': ['Dậu'],
    },
    9: {
      'Thiên Hỷ': ['Ngọ'],
      'Thiên Phú': ['Ngọ'],
    },
    10: {
      'Thiên Hỷ': ['Mùi'],
      'Thiên Phú': ['Tý'],
    },
    11: {
      'Thiên Hỷ': ['Thân'],
      'Thiên Phú': ['Sửu'],
    },
    12: {
      'Thiên Hỷ': ['Dậu'],
      'Thiên Phú': ['Mão'],
    },
  };
}
