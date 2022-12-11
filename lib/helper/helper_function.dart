import 'package:shared_preferences/shared_preferences.dart';

class HelperFunctions {
  static String userLoggedInKey = "LOGGEDINKEY";
  static String userNameKey = "USERNAMEKEY";
  static String userEmailKey = "USEREMAILKEY";  

  static Future<bool> saveUserLoggedInStatus(bool isUserLoggedIn) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setBool(userLoggedInKey, isUserLoggedIn);
  }

  static Future<bool> saveUserName(String userName) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userNameKey, userName);
  }

  static Future<bool> saveUserEmail(String userEmail) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userEmailKey, userEmail);
  }

  static Future<bool?> getUserLoggedStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInKey);
  }

  static Future<String?> getUserEmail() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(userEmailKey);
  }

  static Future<String?> getUserName() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(userNameKey);
  }
}

class HelperFunctionsAdmin {
  static String adminLoggedInKey = "LOGGEDINKEY";  
  static String adminEmailKey = "USEREMAILKEY";

  static Future<bool> saveAdminLoggedStatus(bool isAdminLoggedIn) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setBool(adminLoggedInKey, isAdminLoggedIn);
  }

  static Future<bool> saveAdminEmail(String adminEmail) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(adminEmailKey, adminEmail);
  }

  static Future<bool?> getAdminLoggedStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(adminLoggedInKey);
  }

  static Future<String?> getAdminEmail() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(adminEmailKey);
  }
}

class HelperFunctionsSupAdmin {  
  static String supAdminLoggedInKey = "LOGGEDINKEY";
  static String supAdminNameKey = "USERNAMEKEY";
  static String supAdminEmailKey = "USEREMAILKEY";

  static Future<bool> saveSupAdminLoggedStatus(bool isAdminLoggedIn) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setBool(supAdminLoggedInKey, isAdminLoggedIn);
  }

  static Future<bool> saveUserNameSupAdmin(String userNameAdmin) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(supAdminNameKey, userNameAdmin);
  }

  static Future<bool> saveSupAdminEmail(String adminEmail) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(supAdminEmailKey, adminEmail);
  }

  static Future<bool?> getSupAdminLoggedStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(supAdminLoggedInKey);
  }

  static Future<String?> getSupAdminEmail() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(supAdminEmailKey);
  }

  static Future<String?> getSupUserNameAdmin() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(supAdminNameKey);
  }
}
