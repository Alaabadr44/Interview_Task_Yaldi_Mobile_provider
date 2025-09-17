// ignore_for_file: public_member_api_docs, sort_constructors_first
class AppBarOption {
  final bool notificationIcon;
  final bool centerTitle;
  // final bool logo;
  final bool backButton;
  final bool language;
  final bool drawer;

  const AppBarOption({
    this.notificationIcon = true,
    this.centerTitle = true,
    // this.logo = true,
    this.backButton = false,
    this.language = false,
    this.drawer = true,
  });
}
