
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
enum SelectGender{male, female}

extension GetGender on SelectGender{
  String get gender{
    switch(this){
      case SelectGender.female:
        return "female";
      case SelectGender.male:
        return "male";
    }
  }
}
enum SelectOwnCar{yes, no}
extension GetOwnCar on SelectOwnCar{
  bool get ownCar{
    switch(this){
      case SelectOwnCar.no:
        return false;
      case SelectOwnCar.yes:
        return true;
    }
  }
}