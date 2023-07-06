class AppConfig {
  // static const String base_url = "http://10.0.2.2:9090/";
  static const String base_url = "http://127.0.0.1:9090/";
  static const String login_url = base_url + "user/login";
  static const String register_url = base_url + "user/register";
  static const String sendActivation_url = base_url + "user/sendActivation";
  static const String forgotPassword_url = base_url + "user/forgotPassword";
  static const String changePassword_url = base_url + "user/changePassword";
  static const String getUsers_url = base_url + "user/getUsers";

  static const String getProduits_url = base_url + "produit/getAll";
  static const String getProdById_url = base_url + "produit/getProdById";
  static const String addProd_url = base_url + "produit/addProd";
  static const String updateProd_url = base_url + "produit/updateProd";
  static const String deleteProd_url = base_url + "produit/deleteProd";

}