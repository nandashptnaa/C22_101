import 'package:c22_101/helper/helper_function.dart';
import 'package:c22_101/service/database_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future loginWithUserNameandPassword(String email, String password) async {
    try {
      User user = (await firebaseAuth.signInWithEmailAndPassword(
              email: email, password: password))
          .user!;

      if (user != null) {
        return true;
      }
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future registerUserWithEmailandPassword(
      String fullName, String email, String password) async {
    try {
      User user = (await firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user!;

      if (user != null) {
        await DatabaseService(uid: user.uid).savingUserData(fullName, email);
        return true;
      }
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future signOut() async {
    try {
      await HelperFunctions.saveUserLoggedInStatus(false);
      await HelperFunctions.saveUserEmail("");
      await HelperFunctions.saveUserName("");
      await firebaseAuth.signOut();
    } catch (e) {
      return null;
    }
  }
}

class AuthServiceAdmin {
  final FirebaseAuth adminAuth = FirebaseAuth.instance;

  Future loginAdminNameandPassword(String email, String password) async {
    try {
      User admin = (await adminAuth.signInWithEmailAndPassword(
              email: email, password: password))
          .user!;

      if (admin != null) {
        return true;
      }
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future registerAdminEmailandPassword(
      String fullName, String email, String password) async {
    try {
      User admin = (await adminAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user!;

      if (admin != null) {
        await DatabaseServiceAdmin(uid: admin.uid).savingAdminData(fullName, email);
        return true;
      }
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future signOut() async {
    try {
      await HelperFunctions.saveUserLoggedInStatus(false);
      await HelperFunctions.saveUserEmail("");
      await HelperFunctions.saveUserName("");
      await adminAuth.signOut();
    } catch (e) {
      return null;
    }
  }
}

class AuthServiceSupAdmin {
  final FirebaseAuth supAdminAuth = FirebaseAuth.instance;

  Future loginSupAdminNameandPassword(String email, String password) async {
    try {
      User supAdmin = (await supAdminAuth.signInWithEmailAndPassword(
              email: email, password: password))
          .user!;

      if (supAdmin != null) {
        return true;
      }
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future registerSupAdminEmailandPassword(
      String fullName, String email, String password) async {
    try {
      User supAdmin = (await supAdminAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user!;

      if (supAdmin != null) {
        await DatabaseServiceSupAdmin(uid: supAdmin.uid).savingSupAdminData(fullName, email);
        return true;
      }
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future signOut() async {
    try {
      await HelperFunctionsSupAdmin.saveSupAdminLoggedStatus(false);
      await HelperFunctionsSupAdmin.saveSupAdminEmail("");
      await HelperFunctionsSupAdmin.saveUserNameSupAdmin("");
      await supAdminAuth.signOut();
    } catch (e) {
      return null;
    }
  }
}

