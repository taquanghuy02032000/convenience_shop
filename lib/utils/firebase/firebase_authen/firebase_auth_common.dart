import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:convinient_shop/data/models/users/user_model.dart';
import 'package:convinient_shop/utils/checker/network_checker.dart';
import 'package:convinient_shop/utils/common_text_value/common_text_value.dart';
import 'package:convinient_shop/utils/firebase/firebase_instance.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

Future<String> handleCommonErrorFirebase({required void Function() handleFunc}) async {
  String errorNetwork = await CheckersUtils.checkNetworkError();
  if (errorNetwork.isEmpty) {
    try {
      handleFunc();
    } on FirebaseAuthException catch (e) {
      return e.message ?? ValueCommon.commonError;
    } catch (_) {
      return ValueCommon.commonError;
    }
    return '';
  } else {
    return errorNetwork;
  }
}

class FirebaseAuthCommon {
  static Future<String> createUserWithEmailPassword({
    required String email,
    required String password,
    required String address,
    required String name,
  }) async {
    String result = '';
    result = await handleCommonErrorFirebase(handleFunc: () async {
      await authInstance.createUserWithEmailAndPassword(email: email, password: password);
      final User? user = authInstance.currentUser;
      final String? uID = user?.uid;
      await fireStoreInstance.collection('users').doc(uID).set(
            UserModel(
              uID,
              address,
              ValueCommon.roleUser,
              name,
              [],
              Timestamp.now().toString(),
            ).toMap(),
          );
    });
    return result;
  }
}
