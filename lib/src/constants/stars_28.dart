/// Enum representing the 28 Mansions (Nhị Thập Bát Tú).
enum Star28 {
  giac, // Giác
  cang, // Cang
  de, // Đê
  phong, // Phòng
  tam, // Tâm
  vi, // Vĩ
  co, // Cơ
  dau, // Đẩu
  nguu, // Ngưu
  nu, // Nữ
  hu, // Hư
  nguy, // Nguy
  that, // Thất
  bich, // Bích
  khue, // Khuê
  lau, // Lâu
  vi_da, // Vị (Dạ) - to distinguish from Vĩ
  mao, // Mão
  tat, // Tất
  chuy, // Chủy
  sam, // Sâm
  tinh_well, // Tỉnh (Well)
  quy, // Quỷ
  lieu, // Liễu
  tinh_star, // Tinh (Star)
  truong, // Trương
  duc, // Dực
  chan; // Chẩn

  String get vietnameseName {
    switch (this) {
      case Star28.giac:
        return 'Giác';
      case Star28.cang:
        return 'Cang';
      case Star28.de:
        return 'Đê';
      case Star28.phong:
        return 'Phòng';
      case Star28.tam:
        return 'Tâm';
      case Star28.vi:
        return 'Vĩ';
      case Star28.co:
        return 'Cơ';
      case Star28.dau:
        return 'Đẩu';
      case Star28.nguu:
        return 'Ngưu';
      case Star28.nu:
        return 'Nữ';
      case Star28.hu:
        return 'Hư';
      case Star28.nguy:
        return 'Nguy';
      case Star28.that:
        return 'Thất';
      case Star28.bich:
        return 'Bích';
      case Star28.khue:
        return 'Khuê';
      case Star28.lau:
        return 'Lâu';
      case Star28.vi_da:
        return 'Vị';
      case Star28.mao:
        return 'Mão';
      case Star28.tat:
        return 'Tất';
      case Star28.chuy:
        return 'Chủy';
      case Star28.sam:
        return 'Sâm';
      case Star28.tinh_well:
        return 'Tỉnh';
      case Star28.quy:
        return 'Quỷ';
      case Star28.lieu:
        return 'Liễu';
      case Star28.tinh_star:
        return 'Tinh';
      case Star28.truong:
        return 'Trương';
      case Star28.duc:
        return 'Dực';
      case Star28.chan:
        return 'Chẩn';
    }
  }

  // Metadata: Pros (Good for)
  List<String> get pros {
    switch (this) {
      case Star28.giac:
        return ['Thi cử', 'Thăng quan', 'Hôn thú'];
      case Star28.cang:
        return ['Cầu tài', 'Lễ bái'];
      case Star28.de:
        return ['Xuất hành', 'Cưới hỏi'];
      case Star28.phong:
        return ['Xây dựng', 'Cưới hỏi', 'Khởi công'];
      case Star28.tam:
        return ['Tế lễ', 'Cầu phúc'];
      case Star28.vi:
        return ['Đào ao', 'Mai táng'];
      case Star28.co:
        return ['Khởi tạo', 'Tu tạo', 'An táng'];
      case Star28.dau:
        return ['Trồng trọt', 'Chăn nuôi'];
      case Star28.nguu:
        return ['Trồng trọt', 'Khai trương'];
      case Star28.nu:
        return ['May mặc', 'Hợp tác'];
      case Star28.hu:
        return ['Hào hiệp', 'Từ thiện']; // Example
      case Star28.nguy:
        return ['Lót giường', 'Đi thuyền'];
      case Star28.that:
        return ['Khai trương', 'Đào giếng'];
      case Star28.bich:
        return ['Khai trương', 'Cưới hỏi', 'Xây dựng'];
      case Star28.khue:
        return ['Cầu tài', 'Học tập'];
      case Star28.lau:
        return ['Cầu tài', 'Yến tiệc'];
      case Star28.vi_da:
        return ['Yến tiệc', 'Ký kết'];
      case Star28.mao:
        return ['Đào ao', 'Xây kho'];
      case Star28.tat:
        return ['Đi săn', 'Bắt cá'];
      case Star28.chuy:
        return ['Mua bán', 'Nhập học'];
      case Star28.sam:
        return ['Cầu tài', 'Thi cử'];
      case Star28.tinh_well:
        return ['Tế lễ', 'Chữa bệnh'];
      case Star28.quy:
        return ['Mai táng', 'Chặt cỏ'];
      case Star28.lieu:
        return ['Trồng cây', 'Chăn nuôi'];
      case Star28.tinh_star:
        return ['Xây bếp', 'Nhập trạch'];
      case Star28.truong:
        return ['Khai trương', 'Cưới hỏi', 'Xây dựng'];
      case Star28.duc:
        return ['Cắt may', 'Xây dựng'];
      case Star28.chan:
        return ['Xuất hành', 'Di chuyển', 'An táng'];
    }
  }

  // Metadata: Cons (Bad for)
  List<String> get cons {
    switch (this) {
      case Star28.giac:
        return ['Mai táng', 'Xây sửa mộ'];
      case Star28.cang:
        return ['Cưới hỏi', 'Khởi công'];
      case Star28.de:
        return ['Kiện tụng'];
      case Star28.phong:
        return ['Chôn cất', 'Đi thuyền'];
      case Star28.tam:
        return ['Cưới hỏi', 'Xây dựng', 'Kiện tụng'];
      case Star28.vi:
        return ['Cưới hỏi', 'Nhập trạch'];
      case Star28.co:
        return ['Xuất hành'];
      case Star28.dau:
        return ['Cưới hỏi', 'Đi xa'];
      case Star28.nguu:
        return ['Đi thuyền', 'Xây nhà'];
      case Star28.nu:
        return ['Cưới hỏi', 'Kiện tụng', 'Mai táng'];
      case Star28.hu:
        return ['Xây dựng', 'Cưới hỏi', 'Khai trương'];
      case Star28.nguy:
        return ['Xây dựng', 'Mai táng'];
      case Star28.that:
        return ['Cưới hỏi', 'Xuất hành'];
      case Star28.bich:
        return ['Đi xa'];
      case Star28.khue:
        return ['Cưới hỏi', 'Khai trương', 'Động thổ'];
      case Star28.lau:
        return ['Cưới hỏi', 'Xây dựng'];
      case Star28.vi_da:
        return ['Cưới hỏi', 'Đi xa'];
      case Star28.mao:
        return ['Cưới hỏi', 'Khai trương'];
      case Star28.tat:
        return ['Xây dựng', 'Cưới hỏi'];
      case Star28.chuy:
        return ['Cưới hỏi', 'Xây dựng', 'Mai táng'];
      case Star28.sam:
        return ['Cưới hỏi', 'Động thổ'];
      case Star28.tinh_well:
        return ['Cưới hỏi', 'Xây dựng'];
      case Star28.quy:
        return ['Cưới hỏi', 'Xây dựng'];
      case Star28.lieu:
        return ['Cưới hỏi', 'Xây dựng', 'Đào ao'];
      case Star28.tinh_star:
        return ['Cưới hỏi', 'Mai táng'];
      case Star28.truong:
        return ['Kiện tụng'];
      case Star28.duc:
        return ['Cưới hỏi', 'Mai táng'];
      case Star28.chan:
        return ['Kiện tụng'];
    }
  }
}
