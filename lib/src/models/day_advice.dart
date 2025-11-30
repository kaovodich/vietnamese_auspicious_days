import '../constants/stars_28.dart';

class DayAdvice {
  final bool isHoangDao;
  final String truc;
  final Star28 star28;
  final List<String> goodStars;
  final List<String> badStars;
  final List<String> goodFor;
  final List<String> badFor;

  DayAdvice({
    required this.isHoangDao,
    required this.truc,
    required this.star28,
    required this.goodStars,
    required this.badStars,
    required this.goodFor,
    required this.badFor,
  });

  @override
  String toString() {
    return 'DayAdvice(isHoangDao: $isHoangDao, truc: $truc, star28: ${star28.vietnameseName}, goodStars: $goodStars, badStars: $badStars, goodFor: $goodFor, badFor: $badFor)';
  }
}
