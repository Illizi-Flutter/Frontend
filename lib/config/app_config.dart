class AppConfig {
  static const String base_url = "http://192.168.1.1:9090/";
  static const String login_url = base_url + "user/login";
  static const String register_url = base_url + "user/register";
  static const String sendActivation_url = base_url + "user/sendActivation";
  static const String forgotPassword_url = base_url + "user/forgotPassword";
  static const String changePassword_url = base_url + "user/changePassword";
  static const String getUsers_url = base_url + "user/getUsers";

}