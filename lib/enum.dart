
enum MenuState { home, booking, post, hotline, account}

extension BottomBar on MenuState{
  String get label {
    switch (this) {
      case MenuState.home:
        return "Trang chủ";
      case MenuState.booking:
        return "Đặt lịch";
      case MenuState.post:
        return "Đăng tin";
      case MenuState.hotline:
        return "Hotline";
      case MenuState.account:
        return "Tài Khoản";
    }
  }
}
enum SelectGender{Male, Female}
enum SelectOwnCar{Yes, No}